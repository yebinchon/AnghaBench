
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_3__ {scalar_t__ copied; scalar_t__ len; scalar_t__ offset; } ;
struct sock_xprt {TYPE_2__ xmit; TYPE_1__ recv; } ;



__attribute__((used)) static void
xs_stream_reset_connect(struct sock_xprt *transport)
{
 transport->recv.offset = 0;
 transport->recv.len = 0;
 transport->recv.copied = 0;
 transport->xmit.offset = 0;
}
