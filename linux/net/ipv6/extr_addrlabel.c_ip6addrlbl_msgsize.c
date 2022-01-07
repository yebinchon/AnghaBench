
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrlblmsg {int dummy; } ;


 int NLMSG_ALIGN (int) ;
 int nla_total_size (int) ;

__attribute__((used)) static inline int ip6addrlbl_msgsize(void)
{
 return NLMSG_ALIGN(sizeof(struct ifaddrlblmsg))
  + nla_total_size(16)
  + nla_total_size(4);
}
