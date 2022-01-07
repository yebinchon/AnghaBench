
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct msghdr {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int hvs_dgram_dequeue(struct vsock_sock *vsk, struct msghdr *msg,
        size_t len, int flags)
{
 return -EOPNOTSUPP;
}
