
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_ll {scalar_t__ sll_family; scalar_t__ sll_protocol; int sll_ifindex; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int num; } ;


 scalar_t__ AF_PACKET ;
 int EINVAL ;
 int packet_do_bind (struct sock*,int *,int ,int ) ;
 TYPE_1__* pkt_sk (struct sock*) ;

__attribute__((used)) static int packet_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sockaddr_ll *sll = (struct sockaddr_ll *)uaddr;
 struct sock *sk = sock->sk;





 if (addr_len < sizeof(struct sockaddr_ll))
  return -EINVAL;
 if (sll->sll_family != AF_PACKET)
  return -EINVAL;

 return packet_do_bind(sk, ((void*)0), sll->sll_ifindex,
         sll->sll_protocol ? : pkt_sk(sk)->num);
}
