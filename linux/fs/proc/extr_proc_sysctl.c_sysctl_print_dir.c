
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ctl_table; struct ctl_dir* parent; } ;
struct ctl_dir {TYPE_2__ header; } ;
struct TYPE_3__ {int procname; } ;


 int pr_cont (char*,int ) ;

__attribute__((used)) static void sysctl_print_dir(struct ctl_dir *dir)
{
 if (dir->header.parent)
  sysctl_print_dir(dir->header.parent);
 pr_cont("%s/", dir->header.ctl_table[0].procname);
}
