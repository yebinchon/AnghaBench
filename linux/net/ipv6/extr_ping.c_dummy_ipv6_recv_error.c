
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct msghdr {int dummy; } ;


 int EAFNOSUPPORT ;

__attribute__((used)) static int dummy_ipv6_recv_error(struct sock *sk, struct msghdr *msg, int len,
     int *addr_len)
{
 return -EAFNOSUPPORT;
}
