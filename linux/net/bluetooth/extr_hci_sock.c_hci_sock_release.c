
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_write_queue; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct hci_dev {int promisc; } ;
struct TYPE_2__ {int channel; struct hci_dev* hdev; } ;


 int BT_DBG (char*,struct socket*,struct sock*) ;




 int HCI_SOCK_TRUSTED ;
 int HCI_USER_CHANNEL ;
 int atomic_dec (int *) ;
 int bt_sock_unlink (int *,struct sock*) ;
 struct sk_buff* create_monitor_ctrl_close (struct sock*) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_do_close (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 TYPE_1__* hci_pi (struct sock*) ;
 int hci_send_to_channel (int const,struct sk_buff*,int ,int *) ;
 int hci_sk_list ;
 int hci_sock_free_cookie (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int mgmt_index_added (struct hci_dev*) ;
 int monitor_promisc ;
 int skb_queue_purge (int *) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int hci_sock_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct hci_dev *hdev;
 struct sk_buff *skb;

 BT_DBG("sock %p sk %p", sock, sk);

 if (!sk)
  return 0;

 switch (hci_pi(sk)->channel) {
 case 130:
  atomic_dec(&monitor_promisc);
  break;
 case 129:
 case 128:
 case 131:

  skb = create_monitor_ctrl_close(sk);
  if (skb) {
   hci_send_to_channel(130, skb,
         HCI_SOCK_TRUSTED, ((void*)0));
   kfree_skb(skb);
  }

  hci_sock_free_cookie(sk);
  break;
 }

 bt_sock_unlink(&hci_sk_list, sk);

 hdev = hci_pi(sk)->hdev;
 if (hdev) {
  if (hci_pi(sk)->channel == 128) {
   hci_dev_do_close(hdev);
   hci_dev_clear_flag(hdev, HCI_USER_CHANNEL);
   mgmt_index_added(hdev);
  }

  atomic_dec(&hdev->promisc);
  hci_dev_put(hdev);
 }

 sock_orphan(sk);

 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&sk->sk_write_queue);

 sock_put(sk);
 return 0;
}
