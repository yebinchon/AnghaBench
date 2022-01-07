
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock_xprt {TYPE_2__* sock; int file; } ;
typedef int __poll_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* poll ) (int ,TYPE_2__*,int *) ;} ;


 int stub1 (int ,TYPE_2__*,int *) ;

__attribute__((used)) static __poll_t xs_poll_socket(struct sock_xprt *transport)
{
 return transport->sock->ops->poll(transport->file, transport->sock,
   ((void*)0));
}
