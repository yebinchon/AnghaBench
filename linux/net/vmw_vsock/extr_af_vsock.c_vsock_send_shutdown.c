
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int (* shutdown ) (int ,int) ;} ;


 int stub1 (int ,int) ;
 TYPE_1__* transport ;
 int vsock_sk (struct sock*) ;

__attribute__((used)) static int vsock_send_shutdown(struct sock *sk, int mode)
{
 return transport->shutdown(vsock_sk(sk), mode);
}
