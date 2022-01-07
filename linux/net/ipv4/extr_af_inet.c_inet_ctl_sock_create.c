
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; int sk_allocation; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* unhash ) (struct sock*) ;} ;


 int GFP_ATOMIC ;
 int sock_create_kern (struct net*,unsigned short,unsigned short,unsigned char,struct socket**) ;
 int stub1 (struct sock*) ;

int inet_ctl_sock_create(struct sock **sk, unsigned short family,
    unsigned short type, unsigned char protocol,
    struct net *net)
{
 struct socket *sock;
 int rc = sock_create_kern(net, family, type, protocol, &sock);

 if (rc == 0) {
  *sk = sock->sk;
  (*sk)->sk_allocation = GFP_ATOMIC;




  (*sk)->sk_prot->unhash(*sk);
 }
 return rc;
}
