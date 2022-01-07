
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strparser {TYPE_1__* sk; } ;
struct socket {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* peek_len ) (struct socket*) ;} ;
struct TYPE_3__ {struct socket* sk_socket; } ;


 int INT_MAX ;
 int stub1 (struct socket*) ;

__attribute__((used)) static inline int strp_peek_len(struct strparser *strp)
{
 if (strp->sk) {
  struct socket *sock = strp->sk->sk_socket;

  return sock->ops->peek_len(sock);
 }





 return INT_MAX;
}
