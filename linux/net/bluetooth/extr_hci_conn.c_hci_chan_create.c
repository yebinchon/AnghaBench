
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_conn {int chan_list; int flags; struct hci_dev* hdev; } ;
struct hci_chan {int list; int state; int data_q; int conn; } ;


 int BT_CONNECTED ;
 int BT_DBG (char*,...) ;
 int GFP_KERNEL ;
 int HCI_CONN_DROP ;
 int hci_conn_get (struct hci_conn*) ;
 struct hci_chan* kzalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int skb_queue_head_init (int *) ;
 scalar_t__ test_bit (int ,int *) ;

struct hci_chan *hci_chan_create(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;
 struct hci_chan *chan;

 BT_DBG("%s hcon %p", hdev->name, conn);

 if (test_bit(HCI_CONN_DROP, &conn->flags)) {
  BT_DBG("Refusing to create new hci_chan");
  return ((void*)0);
 }

 chan = kzalloc(sizeof(*chan), GFP_KERNEL);
 if (!chan)
  return ((void*)0);

 chan->conn = hci_conn_get(conn);
 skb_queue_head_init(&chan->data_q);
 chan->state = BT_CONNECTED;

 list_add_rcu(&chan->list, &conn->chan_list);

 return chan;
}
