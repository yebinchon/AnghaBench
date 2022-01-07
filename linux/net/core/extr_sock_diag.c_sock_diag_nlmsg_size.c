
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcp_info {int dummy; } ;
struct inet_diag_msg {int dummy; } ;


 size_t NLMSG_ALIGN (scalar_t__) ;
 scalar_t__ nla_total_size (int) ;
 scalar_t__ nla_total_size_64bit (int) ;

__attribute__((used)) static size_t sock_diag_nlmsg_size(void)
{
 return NLMSG_ALIGN(sizeof(struct inet_diag_msg)
        + nla_total_size(sizeof(u8))
        + nla_total_size_64bit(sizeof(struct tcp_info)));
}
