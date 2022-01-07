
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ctl_table; struct ctl_dir* parent; } ;
struct ctl_dir {TYPE_2__ header; } ;
struct ctl_table_set {struct ctl_dir dir; } ;
struct TYPE_3__ {char* procname; } ;


 scalar_t__ IS_ERR (struct ctl_dir*) ;
 struct ctl_dir* find_subdir (struct ctl_dir*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static struct ctl_dir *xlate_dir(struct ctl_table_set *set, struct ctl_dir *dir)
{
 struct ctl_dir *parent;
 const char *procname;
 if (!dir->header.parent)
  return &set->dir;
 parent = xlate_dir(set, dir->header.parent);
 if (IS_ERR(parent))
  return parent;
 procname = dir->header.ctl_table[0].procname;
 return find_subdir(parent, procname, strlen(procname));
}
