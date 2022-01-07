
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ctl_table; } ;
struct ctl_dir {TYPE_2__ header; } ;
struct TYPE_3__ {int child; } ;


 int sysctl_mount_point ;

__attribute__((used)) static void set_empty_dir(struct ctl_dir *dir)
{
 dir->header.ctl_table[0].child = sysctl_mount_point;
}
