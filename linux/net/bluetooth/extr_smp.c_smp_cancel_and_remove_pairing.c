
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_chan {int flags; int * remote_irk; int * slave_ltk; int * ltk; } ;
struct l2cap_conn {struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {struct l2cap_conn* l2cap_data; } ;
typedef int bdaddr_t ;


 int SMP_FLAG_COMPLETE ;
 int SMP_UNSPECIFIED ;
 struct hci_conn* hci_conn_hash_lookup_le (struct hci_dev*,int *,int ) ;
 int hci_remove_irk (struct hci_dev*,int *,int ) ;
 int hci_remove_ltk (struct hci_dev*,int *,int ) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int smp_failure (struct l2cap_conn*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int smp_cancel_and_remove_pairing(struct hci_dev *hdev, bdaddr_t *bdaddr,
      u8 addr_type)
{
 struct hci_conn *hcon;
 struct l2cap_conn *conn;
 struct l2cap_chan *chan;
 struct smp_chan *smp;
 int err;

 err = hci_remove_ltk(hdev, bdaddr, addr_type);
 hci_remove_irk(hdev, bdaddr, addr_type);

 hcon = hci_conn_hash_lookup_le(hdev, bdaddr, addr_type);
 if (!hcon)
  goto done;

 conn = hcon->l2cap_data;
 if (!conn)
  goto done;

 chan = conn->smp;
 if (!chan)
  goto done;

 l2cap_chan_lock(chan);

 smp = chan->data;
 if (smp) {


  smp->ltk = ((void*)0);
  smp->slave_ltk = ((void*)0);
  smp->remote_irk = ((void*)0);

  if (test_bit(SMP_FLAG_COMPLETE, &smp->flags))
   smp_failure(conn, 0);
  else
   smp_failure(conn, SMP_UNSPECIFIED);
  err = 0;
 }

 l2cap_chan_unlock(chan);

done:
 return err;
}
