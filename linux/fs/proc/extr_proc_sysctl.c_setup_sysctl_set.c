
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int header; } ;
struct ctl_table_set {int (* is_seen ) (struct ctl_table_set*) ;TYPE_1__ dir; } ;
struct ctl_table_root {int dummy; } ;


 int init_header (int *,struct ctl_table_root*,struct ctl_table_set*,int *,int ) ;
 int memset (struct ctl_table_set*,int ,int) ;
 int root_table ;

void setup_sysctl_set(struct ctl_table_set *set,
 struct ctl_table_root *root,
 int (*is_seen)(struct ctl_table_set *))
{
 memset(set, 0, sizeof(*set));
 set->is_seen = is_seen;
 init_header(&set->dir.header, root, set, ((void*)0), root_table);
}
