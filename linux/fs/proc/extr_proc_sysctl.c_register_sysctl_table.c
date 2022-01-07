
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;
struct ctl_path {int dummy; } ;


 struct ctl_table_header* register_sysctl_paths (struct ctl_path const*,struct ctl_table*) ;

struct ctl_table_header *register_sysctl_table(struct ctl_table *table)
{
 static const struct ctl_path null_path[] = { {} };

 return register_sysctl_paths(null_path, table);
}
