
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct br_port_msg {int dummy; } ;
struct br_mdb_entry {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static inline size_t rtnl_mdb_nlmsg_size(void)
{
 return NLMSG_ALIGN(sizeof(struct br_port_msg))
  + nla_total_size(sizeof(struct br_mdb_entry));
}
