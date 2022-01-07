
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;


 scalar_t__ hvs_stream_has_space (struct vsock_sock*) ;

__attribute__((used)) static
int hvs_notify_poll_out(struct vsock_sock *vsk, size_t target, bool *writable)
{
 *writable = hvs_stream_has_space(vsk) > 0;

 return 0;
}
