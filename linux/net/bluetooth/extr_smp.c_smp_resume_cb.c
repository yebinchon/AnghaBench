
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_chan {int security_timer; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct l2cap_chan {struct l2cap_conn* conn; struct smp_chan* data; } ;
struct hci_conn {scalar_t__ type; int flags; } ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,struct l2cap_chan*) ;
 int HCI_CONN_ENCRYPT ;
 int bredr_pairing (struct l2cap_chan*) ;
 int cancel_delayed_work (int *) ;
 int smp_distribute_keys (struct smp_chan*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void smp_resume_cb(struct l2cap_chan *chan)
{
 struct smp_chan *smp = chan->data;
 struct l2cap_conn *conn = chan->conn;
 struct hci_conn *hcon = conn->hcon;

 BT_DBG("chan %p", chan);

 if (hcon->type == ACL_LINK) {
  bredr_pairing(chan);
  return;
 }

 if (!smp)
  return;

 if (!test_bit(HCI_CONN_ENCRYPT, &hcon->flags))
  return;

 cancel_delayed_work(&smp->security_timer);

 smp_distribute_keys(smp);
}
