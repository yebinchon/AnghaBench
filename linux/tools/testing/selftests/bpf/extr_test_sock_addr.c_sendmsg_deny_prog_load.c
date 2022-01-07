
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_addr_test {int dummy; } ;


 int xmsg_ret_only_prog_load (struct sock_addr_test const*,int ) ;

__attribute__((used)) static int sendmsg_deny_prog_load(const struct sock_addr_test *test)
{
 return xmsg_ret_only_prog_load(test, 0);
}
