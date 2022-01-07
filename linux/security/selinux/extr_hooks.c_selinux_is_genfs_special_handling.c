
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_type; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ selinux_policycap_cgroupseclabel () ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int selinux_is_genfs_special_handling(struct super_block *sb)
{

 return !strcmp(sb->s_type->name, "sysfs") ||
  !strcmp(sb->s_type->name, "pstore") ||
  !strcmp(sb->s_type->name, "debugfs") ||
  !strcmp(sb->s_type->name, "tracefs") ||
  !strcmp(sb->s_type->name, "rootfs") ||
  (selinux_policycap_cgroupseclabel() &&
   (!strcmp(sb->s_type->name, "cgroup") ||
    !strcmp(sb->s_type->name, "cgroup2")));
}
