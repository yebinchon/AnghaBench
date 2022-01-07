
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_addr_test {int dummy; } ;


 int SERV6_REWRITE_IP ;
 int sendmsg6_rw_dst_asm_prog_load (struct sock_addr_test const*,int ) ;

__attribute__((used)) static int sendmsg6_rw_asm_prog_load(const struct sock_addr_test *test)
{
 return sendmsg6_rw_dst_asm_prog_load(test, SERV6_REWRITE_IP);
}
