
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_conn {int flags; struct hci_dev* hdev; } ;
struct hci_chan {int data_q; int list; struct hci_conn* conn; } ;


 int BT_DBG (char*,int ,struct hci_conn*,struct hci_chan*) ;
 int HCI_CONN_DROP ;
 int hci_conn_put (struct hci_conn*) ;
 int kfree (struct hci_chan*) ;
 int list_del_rcu (int *) ;
 int set_bit (int ,int *) ;
 int skb_queue_purge (int *) ;
 int synchronize_rcu () ;

void hci_chan_del(struct hci_chan *chan)
{
 struct hci_conn *conn = chan->conn;
 struct hci_dev *hdev = conn->hdev;

 BT_DBG("%s hcon %p chan %p", hdev->name, conn, chan);

 list_del_rcu(&chan->list);

 synchronize_rcu();


 set_bit(HCI_CONN_DROP, &conn->flags);

 hci_conn_put(conn);

 skb_queue_purge(&chan->data_q);
 kfree(chan);
}
