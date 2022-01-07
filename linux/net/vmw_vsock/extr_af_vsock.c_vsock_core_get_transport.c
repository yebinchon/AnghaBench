
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_transport {int dummy; } ;


 struct vsock_transport const* transport ;

const struct vsock_transport *vsock_core_get_transport(void)
{



 return transport;
}
