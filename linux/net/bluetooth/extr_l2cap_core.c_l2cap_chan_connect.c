
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct l2cap_conn {int chan_lock; } ;
struct l2cap_chan {scalar_t__ chan_type; int mode; int state; scalar_t__ sport; TYPE_1__* ops; int src_type; int src; int sec_level; scalar_t__ dcid; int psm; int dst_type; int dst; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int const state; int src; } ;
typedef int bdaddr_t ;
typedef int __le16 ;
struct TYPE_2__ {int (* get_sndtimeo ) (struct l2cap_chan*) ;} ;


 int ADDR_LE_DEV_PUBLIC ;
 int ADDR_LE_DEV_RANDOM ;
 int BDADDR_LE_PUBLIC ;





 int BT_DBG (char*,int *,int *,int ,int ) ;

 int EBADFD ;
 int EBUSY ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int EISCONN ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int HCI_ADVERTISING ;
 int HCI_LE_CONN_TIMEOUT ;
 int HCI_ROLE_SLAVE ;
 scalar_t__ IS_ERR (struct hci_conn*) ;
 scalar_t__ L2CAP_CHAN_CONN_ORIENTED ;
 scalar_t__ L2CAP_CHAN_FIXED ;
 scalar_t__ L2CAP_CHAN_RAW ;




 int PTR_ERR (struct hci_conn*) ;
 int __clear_chan_timer (struct l2cap_chan*) ;
 int __l2cap_chan_add (struct l2cap_conn*,struct l2cap_chan*) ;
 scalar_t__ __l2cap_get_chan_by_dcid (struct l2cap_conn*,scalar_t__) ;
 int __le16_to_cpu (int ) ;
 int __set_chan_timer (struct l2cap_chan*,int ) ;
 int bacpy (int *,int *) ;
 int bdaddr_src_type (struct hci_conn*) ;
 scalar_t__ bdaddr_type_is_le (int ) ;
 int chan_list_lock ;
 int disable_ertm ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_connect_acl (struct hci_dev*,int *,int ,int ) ;
 struct hci_conn* hci_connect_le (struct hci_dev*,int *,int ,int ,int ,int ,int *) ;
 struct hci_conn* hci_connect_le_scan (struct hci_dev*,int *,int ,int ,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_dev* hci_get_route (int *,int *,int ) ;
 int is_valid_psm (int ,int ) ;
 scalar_t__ l2cap_chan_check_security (struct l2cap_chan*,int) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 struct l2cap_conn* l2cap_conn_add (struct hci_conn*) ;
 int l2cap_do_start (struct l2cap_chan*) ;
 int l2cap_get_auth_type (struct l2cap_chan*) ;
 int l2cap_state_change (struct l2cap_chan*,int const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct l2cap_chan*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int l2cap_chan_connect(struct l2cap_chan *chan, __le16 psm, u16 cid,
         bdaddr_t *dst, u8 dst_type)
{
 struct l2cap_conn *conn;
 struct hci_conn *hcon;
 struct hci_dev *hdev;
 int err;

 BT_DBG("%pMR -> %pMR (type %u) psm 0x%2.2x", &chan->src, dst,
        dst_type, __le16_to_cpu(psm));

 hdev = hci_get_route(dst, &chan->src, chan->src_type);
 if (!hdev)
  return -EHOSTUNREACH;

 hci_dev_lock(hdev);

 if (!is_valid_psm(__le16_to_cpu(psm), dst_type) && !cid &&
     chan->chan_type != L2CAP_CHAN_RAW) {
  err = -EINVAL;
  goto done;
 }

 if (chan->chan_type == L2CAP_CHAN_CONN_ORIENTED && !psm) {
  err = -EINVAL;
  goto done;
 }

 if (chan->chan_type == L2CAP_CHAN_FIXED && !cid) {
  err = -EINVAL;
  goto done;
 }

 switch (chan->mode) {
 case 131:
  break;
 case 129:
  break;
 case 130:
 case 128:
  if (!disable_ertm)
   break;

 default:
  err = -EOPNOTSUPP;
  goto done;
 }

 switch (chan->state) {
 case 135:
 case 134:
 case 136:

  err = 0;
  goto done;

 case 133:

  err = -EISCONN;
  goto done;

 case 132:
 case 137:

  break;

 default:
  err = -EBADFD;
  goto done;
 }


 bacpy(&chan->dst, dst);
 chan->dst_type = dst_type;

 chan->psm = psm;
 chan->dcid = cid;

 if (bdaddr_type_is_le(dst_type)) {


  if (dst_type == BDADDR_LE_PUBLIC)
   dst_type = ADDR_LE_DEV_PUBLIC;
  else
   dst_type = ADDR_LE_DEV_RANDOM;

  if (hci_dev_test_flag(hdev, HCI_ADVERTISING))
   hcon = hci_connect_le(hdev, dst, dst_type,
           chan->sec_level,
           HCI_LE_CONN_TIMEOUT,
           HCI_ROLE_SLAVE, ((void*)0));
  else
   hcon = hci_connect_le_scan(hdev, dst, dst_type,
         chan->sec_level,
         HCI_LE_CONN_TIMEOUT);

 } else {
  u8 auth_type = l2cap_get_auth_type(chan);
  hcon = hci_connect_acl(hdev, dst, chan->sec_level, auth_type);
 }

 if (IS_ERR(hcon)) {
  err = PTR_ERR(hcon);
  goto done;
 }

 conn = l2cap_conn_add(hcon);
 if (!conn) {
  hci_conn_drop(hcon);
  err = -ENOMEM;
  goto done;
 }

 mutex_lock(&conn->chan_lock);
 l2cap_chan_lock(chan);

 if (cid && __l2cap_get_chan_by_dcid(conn, cid)) {
  hci_conn_drop(hcon);
  err = -EBUSY;
  goto chan_unlock;
 }


 bacpy(&chan->src, &hcon->src);
 chan->src_type = bdaddr_src_type(hcon);

 __l2cap_chan_add(conn, chan);


 hci_conn_drop(hcon);

 l2cap_state_change(chan, 135);
 __set_chan_timer(chan, chan->ops->get_sndtimeo(chan));




 write_lock(&chan_list_lock);
 chan->sport = 0;
 write_unlock(&chan_list_lock);

 if (hcon->state == 133) {
  if (chan->chan_type != L2CAP_CHAN_CONN_ORIENTED) {
   __clear_chan_timer(chan);
   if (l2cap_chan_check_security(chan, 1))
    l2cap_state_change(chan, 133);
  } else
   l2cap_do_start(chan);
 }

 err = 0;

chan_unlock:
 l2cap_chan_unlock(chan);
 mutex_unlock(&conn->chan_lock);
done:
 hci_dev_unlock(hdev);
 hci_dev_put(hdev);
 return err;
}
