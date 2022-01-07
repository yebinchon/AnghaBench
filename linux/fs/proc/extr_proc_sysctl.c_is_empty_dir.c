
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctl_table_header {TYPE_1__* ctl_table; } ;
struct TYPE_2__ {scalar_t__ child; } ;


 scalar_t__ sysctl_mount_point ;

__attribute__((used)) static bool is_empty_dir(struct ctl_table_header *head)
{
 return head->ctl_table[0].child == sysctl_mount_point;
}
