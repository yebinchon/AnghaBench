
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int state; struct sock* sk; } ;
struct TYPE_4__ {scalar_t__ s_node; int s_net; } ;
struct sockaddr_at {scalar_t__ sat_family; TYPE_2__ sat_addr; int sat_port; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct atalk_sock {scalar_t__ dest_node; int dest_net; int dest_port; } ;
struct TYPE_3__ {int comm; } ;


 scalar_t__ AF_APPLETALK ;
 scalar_t__ ATADDR_BCAST ;
 int EACCES ;
 int EAFNOSUPPORT ;
 int EBUSY ;
 int EINVAL ;
 int ENETUNREACH ;
 int SOCK_BROADCAST ;
 int SOCK_ZAPPED ;
 int SS_CONNECTED ;
 int SS_UNCONNECTED ;
 int TCP_CLOSE ;
 int TCP_ESTABLISHED ;
 struct atalk_sock* at_sk (struct sock*) ;
 scalar_t__ atalk_autobind (struct sock*) ;
 int atrtr_get_dev (TYPE_2__*) ;
 TYPE_1__* current ;
 int lock_sock (struct sock*) ;
 int pr_warn (char*,int ) ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int atalk_connect(struct socket *sock, struct sockaddr *uaddr,
    int addr_len, int flags)
{
 struct sock *sk = sock->sk;
 struct atalk_sock *at = at_sk(sk);
 struct sockaddr_at *addr;
 int err;

 sk->sk_state = TCP_CLOSE;
 sock->state = SS_UNCONNECTED;

 if (addr_len != sizeof(*addr))
  return -EINVAL;

 addr = (struct sockaddr_at *)uaddr;

 if (addr->sat_family != AF_APPLETALK)
  return -EAFNOSUPPORT;

 if (addr->sat_addr.s_node == ATADDR_BCAST &&
     !sock_flag(sk, SOCK_BROADCAST)) {

  pr_warn("atalk_connect: %s is broken and did not set SO_BROADCAST.\n",
   current->comm);



 }

 lock_sock(sk);
 err = -EBUSY;
 if (sock_flag(sk, SOCK_ZAPPED))
  if (atalk_autobind(sk) < 0)
   goto out;

 err = -ENETUNREACH;
 if (!atrtr_get_dev(&addr->sat_addr))
  goto out;

 at->dest_port = addr->sat_port;
 at->dest_net = addr->sat_addr.s_net;
 at->dest_node = addr->sat_addr.s_node;

 sock->state = SS_CONNECTED;
 sk->sk_state = TCP_ESTABLISHED;
 err = 0;
out:
 release_sock(sk);
 return err;
}
