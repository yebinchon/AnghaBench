
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_llc {scalar_t__ sllc_arphrd; } ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct TYPE_5__ {int * mac; int lsap; } ;
struct llc_sock {int addr; TYPE_2__* dev; TYPE_1__ laddr; } ;
struct llc_sap {int dummy; } ;
struct TYPE_6__ {scalar_t__ type; struct sockaddr_llc* dev_addr; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int EUSERS ;
 int IFHWADDRLEN ;
 int SOCK_ZAPPED ;
 TYPE_2__* dev_get_by_index (int *,scalar_t__) ;
 TYPE_2__* dev_getfirstbyhwtype (int *,scalar_t__) ;
 int dev_put (TYPE_2__*) ;
 int init_net ;
 int llc_sap_add_socket (struct llc_sap*,struct sock*) ;
 struct llc_sap* llc_sap_open (int ,int *) ;
 struct llc_sock* llc_sk (struct sock*) ;
 int llc_ui_autoport () ;
 int memcpy (int *,struct sockaddr_llc*,int) ;
 int sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int llc_ui_autobind(struct socket *sock, struct sockaddr_llc *addr)
{
 struct sock *sk = sock->sk;
 struct llc_sock *llc = llc_sk(sk);
 struct llc_sap *sap;
 int rc = -EINVAL;

 if (!sock_flag(sk, SOCK_ZAPPED))
  goto out;
 rc = -ENODEV;
 if (sk->sk_bound_dev_if) {
  llc->dev = dev_get_by_index(&init_net, sk->sk_bound_dev_if);
  if (llc->dev && addr->sllc_arphrd != llc->dev->type) {
   dev_put(llc->dev);
   llc->dev = ((void*)0);
  }
 } else
  llc->dev = dev_getfirstbyhwtype(&init_net, addr->sllc_arphrd);
 if (!llc->dev)
  goto out;
 rc = -EUSERS;
 llc->laddr.lsap = llc_ui_autoport();
 if (!llc->laddr.lsap)
  goto out;
 rc = -EBUSY;
 sap = llc_sap_open(llc->laddr.lsap, ((void*)0));
 if (!sap)
  goto out;
 memcpy(llc->laddr.mac, llc->dev->dev_addr, IFHWADDRLEN);
 memcpy(&llc->addr, addr, sizeof(llc->addr));

 llc_sap_add_socket(sap, sk);
 sock_reset_flag(sk, SOCK_ZAPPED);
 rc = 0;
out:
 return rc;
}
