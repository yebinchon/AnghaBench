
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_cmd_ident_addr_info {scalar_t__ addr_type; int bdaddr; } ;
struct smp_chan {int remote_key_dist; scalar_t__ id_addr_type; int irk; int id_addr; int remote_irk; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_conn {scalar_t__ dst_type; int hdev; int dst; } ;
typedef int bdaddr_t ;


 int * BDADDR_ANY ;
 int BT_DBG (char*) ;
 int KEY_DIST_MASK ;
 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 int SMP_CMD_SIGN_INFO ;
 int SMP_DIST_ID_KEY ;
 int SMP_DIST_SIGN ;
 int SMP_INVALID_PARAMS ;
 scalar_t__ bacmp (int *,int *) ;
 int bacpy (int *,int *) ;
 int bt_dev_err (int ,char*) ;
 int hci_add_irk (int ,int *,scalar_t__,int ,int *) ;
 scalar_t__ hci_bdaddr_is_rpa (int *,scalar_t__) ;
 scalar_t__ hci_is_identity_address (int *,scalar_t__) ;
 int skb_pull (struct sk_buff*,int) ;
 int smp_distribute_keys (struct smp_chan*) ;

__attribute__((used)) static int smp_cmd_ident_addr_info(struct l2cap_conn *conn,
       struct sk_buff *skb)
{
 struct smp_cmd_ident_addr_info *info = (void *) skb->data;
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp = chan->data;
 struct hci_conn *hcon = conn->hcon;
 bdaddr_t rpa;

 BT_DBG("");

 if (skb->len < sizeof(*info))
  return SMP_INVALID_PARAMS;


 smp->remote_key_dist &= ~SMP_DIST_ID_KEY;

 if (smp->remote_key_dist & SMP_DIST_SIGN)
  SMP_ALLOW_CMD(smp, SMP_CMD_SIGN_INFO);

 skb_pull(skb, sizeof(*info));
 if (!bacmp(&info->bdaddr, BDADDR_ANY) ||
     !hci_is_identity_address(&info->bdaddr, info->addr_type)) {
  bt_dev_err(hcon->hdev, "ignoring IRK with no identity address");
  goto distribute;
 }






 if (hci_is_identity_address(&hcon->dst, hcon->dst_type) &&
     (bacmp(&info->bdaddr, &hcon->dst) ||
      info->addr_type != hcon->dst_type)) {
  bt_dev_err(hcon->hdev,
      "ignoring IRK with invalid identity address");
  goto distribute;
 }

 bacpy(&smp->id_addr, &info->bdaddr);
 smp->id_addr_type = info->addr_type;

 if (hci_bdaddr_is_rpa(&hcon->dst, hcon->dst_type))
  bacpy(&rpa, &hcon->dst);
 else
  bacpy(&rpa, BDADDR_ANY);

 smp->remote_irk = hci_add_irk(conn->hcon->hdev, &smp->id_addr,
          smp->id_addr_type, smp->irk, &rpa);

distribute:
 if (!(smp->remote_key_dist & KEY_DIST_MASK))
  smp_distribute_keys(smp);

 return 0;
}
