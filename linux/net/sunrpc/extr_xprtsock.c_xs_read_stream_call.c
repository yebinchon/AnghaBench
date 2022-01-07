
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int dummy; } ;
struct msghdr {int dummy; } ;
typedef int ssize_t ;


 int ESHUTDOWN ;

__attribute__((used)) static ssize_t
xs_read_stream_call(struct sock_xprt *transport, struct msghdr *msg, int flags)
{
 return -ESHUTDOWN;
}
