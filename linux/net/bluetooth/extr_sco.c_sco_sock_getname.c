
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_sco {int sco_bdaddr; } ;
struct sockaddr {int sa_family; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int src; int dst; } ;


 int AF_BLUETOOTH ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int bacpy (int *,int *) ;
 TYPE_1__* sco_pi (struct sock*) ;

__attribute__((used)) static int sco_sock_getname(struct socket *sock, struct sockaddr *addr,
       int peer)
{
 struct sockaddr_sco *sa = (struct sockaddr_sco *) addr;
 struct sock *sk = sock->sk;

 BT_DBG("sock %p, sk %p", sock, sk);

 addr->sa_family = AF_BLUETOOTH;

 if (peer)
  bacpy(&sa->sco_bdaddr, &sco_pi(sk)->dst);
 else
  bacpy(&sa->sco_bdaddr, &sco_pi(sk)->src);

 return sizeof(struct sockaddr_sco);
}
