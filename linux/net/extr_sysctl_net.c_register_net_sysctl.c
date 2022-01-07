
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int sysctls; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;


 struct ctl_table_header* __register_sysctl_table (int *,char const*,struct ctl_table*) ;

struct ctl_table_header *register_net_sysctl(struct net *net,
 const char *path, struct ctl_table *table)
{
 return __register_sysctl_table(&net->sysctls, path, table);
}
