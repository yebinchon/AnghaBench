
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn {struct l2cap_chan* smp; struct hci_conn* hcon; } ;
struct l2cap_chan {struct l2cap_conn* conn; } ;
struct hci_conn {scalar_t__ type; int flags; } ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,struct l2cap_chan*) ;
 int HCI_CONN_ENCRYPT ;
 int bredr_pairing (struct l2cap_chan*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void smp_ready_cb(struct l2cap_chan *chan)
{
 struct l2cap_conn *conn = chan->conn;
 struct hci_conn *hcon = conn->hcon;

 BT_DBG("chan %p", chan);







 conn->smp = chan;

 if (hcon->type == ACL_LINK && test_bit(HCI_CONN_ENCRYPT, &hcon->flags))
  bredr_pairing(chan);
}
