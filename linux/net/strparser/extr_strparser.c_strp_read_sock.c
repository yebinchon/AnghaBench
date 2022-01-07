
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int (* read_sock_done ) (struct strparser*,int) ;} ;
struct strparser {TYPE_3__ cb; TYPE_5__* sk; } ;
struct socket {TYPE_2__* ops; } ;
struct TYPE_7__ {struct strparser* data; } ;
struct TYPE_10__ {int error; int count; TYPE_1__ arg; } ;
typedef TYPE_4__ read_descriptor_t ;
struct TYPE_11__ {struct socket* sk_socket; } ;
struct TYPE_8__ {int (* read_sock ) (TYPE_5__*,TYPE_4__*,int ) ;} ;


 int EBUSY ;
 int strp_recv ;
 int stub1 (TYPE_5__*,TYPE_4__*,int ) ;
 int stub2 (struct strparser*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int strp_read_sock(struct strparser *strp)
{
 struct socket *sock = strp->sk->sk_socket;
 read_descriptor_t desc;

 if (unlikely(!sock || !sock->ops || !sock->ops->read_sock))
  return -EBUSY;

 desc.arg.data = strp;
 desc.error = 0;
 desc.count = 1;


 sock->ops->read_sock(strp->sk, &desc, strp_recv);

 desc.error = strp->cb.read_sock_done(strp, desc.error);

 return desc.error;
}
