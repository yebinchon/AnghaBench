
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct msghdr {int dummy; } ;


 int EOPNOTSUPP ;

int sock_no_sendmsg_locked(struct sock *sk, struct msghdr *m, size_t len)
{
 return -EOPNOTSUPP;
}
