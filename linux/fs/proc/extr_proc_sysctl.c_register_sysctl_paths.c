
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;
struct ctl_path {int dummy; } ;
struct TYPE_2__ {int default_set; } ;


 struct ctl_table_header* __register_sysctl_paths (int *,struct ctl_path const*,struct ctl_table*) ;
 TYPE_1__ sysctl_table_root ;

struct ctl_table_header *register_sysctl_paths(const struct ctl_path *path,
      struct ctl_table *table)
{
 return __register_sysctl_paths(&sysctl_table_root.default_set,
     path, table);
}
