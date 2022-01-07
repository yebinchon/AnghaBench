
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctl_table_set {int dummy; } ;
struct ctl_table_root {int dummy; } ;
struct ctl_table_header {struct ctl_table* ctl_table; struct ctl_table_set* set; struct ctl_dir* parent; struct ctl_table_root* root; } ;
struct ctl_table {char* procname; struct ctl_table_root* data; int mode; } ;
struct ctl_dir {int dummy; } ;
struct TYPE_2__ {struct ctl_table_set default_set; } ;


 scalar_t__ IS_ERR (struct ctl_dir*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int drop_sysctl_table (struct ctl_table_header*) ;
 struct ctl_table* find_entry (struct ctl_table_header**,struct ctl_dir*,char const*,int ) ;
 int pr_cont (char*,char const*) ;
 int pr_err (char*) ;
 int strlen (char const*) ;
 int sysctl_print_dir (struct ctl_dir*) ;
 TYPE_1__ sysctl_table_root ;
 struct ctl_dir* xlate_dir (struct ctl_table_set*,struct ctl_dir*) ;

__attribute__((used)) static void put_links(struct ctl_table_header *header)
{
 struct ctl_table_set *root_set = &sysctl_table_root.default_set;
 struct ctl_table_root *root = header->root;
 struct ctl_dir *parent = header->parent;
 struct ctl_dir *core_parent;
 struct ctl_table *entry;

 if (header->set == root_set)
  return;

 core_parent = xlate_dir(root_set, parent);
 if (IS_ERR(core_parent))
  return;

 for (entry = header->ctl_table; entry->procname; entry++) {
  struct ctl_table_header *link_head;
  struct ctl_table *link;
  const char *name = entry->procname;

  link = find_entry(&link_head, core_parent, name, strlen(name));
  if (link &&
      ((S_ISDIR(link->mode) && S_ISDIR(entry->mode)) ||
       (S_ISLNK(link->mode) && (link->data == root)))) {
   drop_sysctl_table(link_head);
  }
  else {
   pr_err("sysctl link missing during unregister: ");
   sysctl_print_dir(parent);
   pr_cont("/%s\n", name);
  }
 }
}
