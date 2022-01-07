
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_sco {int sco_bdaddr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; } ;
struct TYPE_2__ {int src; } ;


 scalar_t__ AF_BLUETOOTH ;
 scalar_t__ BT_BOUND ;
 int BT_DBG (char*,struct sock*,int *) ;
 scalar_t__ BT_OPEN ;
 int EBADFD ;
 int EINVAL ;
 scalar_t__ SOCK_SEQPACKET ;
 int bacpy (int *,int *) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 TYPE_1__* sco_pi (struct sock*) ;

__attribute__((used)) static int sco_sock_bind(struct socket *sock, struct sockaddr *addr,
    int addr_len)
{
 struct sockaddr_sco *sa = (struct sockaddr_sco *) addr;
 struct sock *sk = sock->sk;
 int err = 0;

 if (!addr || addr_len < sizeof(struct sockaddr_sco) ||
     addr->sa_family != AF_BLUETOOTH)
  return -EINVAL;

 BT_DBG("sk %p %pMR", sk, &sa->sco_bdaddr);

 lock_sock(sk);

 if (sk->sk_state != BT_OPEN) {
  err = -EBADFD;
  goto done;
 }

 if (sk->sk_type != SOCK_SEQPACKET) {
  err = -EINVAL;
  goto done;
 }

 bacpy(&sco_pi(sk)->src, &sa->sco_bdaddr);

 sk->sk_state = BT_BOUND;

done:
 release_sock(sk);
 return err;
}
