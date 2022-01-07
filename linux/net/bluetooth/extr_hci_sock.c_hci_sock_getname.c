
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_hci {int hci_channel; int hci_dev; int hci_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct hci_dev {int id; } ;
struct TYPE_2__ {int channel; struct hci_dev* hdev; } ;


 int AF_BLUETOOTH ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int EBADFD ;
 int EOPNOTSUPP ;
 TYPE_1__* hci_pi (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int hci_sock_getname(struct socket *sock, struct sockaddr *addr,
       int peer)
{
 struct sockaddr_hci *haddr = (struct sockaddr_hci *)addr;
 struct sock *sk = sock->sk;
 struct hci_dev *hdev;
 int err = 0;

 BT_DBG("sock %p sk %p", sock, sk);

 if (peer)
  return -EOPNOTSUPP;

 lock_sock(sk);

 hdev = hci_pi(sk)->hdev;
 if (!hdev) {
  err = -EBADFD;
  goto done;
 }

 haddr->hci_family = AF_BLUETOOTH;
 haddr->hci_dev = hdev->id;
 haddr->hci_channel= hci_pi(sk)->channel;
 err = sizeof(*haddr);

done:
 release_sock(sk);
 return err;
}
