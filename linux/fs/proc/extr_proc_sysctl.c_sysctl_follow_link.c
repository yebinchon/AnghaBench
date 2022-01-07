
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_set {int dummy; } ;
struct ctl_table_root {int dummy; } ;
struct ctl_table_header {int parent; } ;
struct ctl_table {char* procname; struct ctl_table_root* data; } ;
struct ctl_dir {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct ctl_dir*) ;
 int PTR_ERR (struct ctl_dir*) ;
 struct ctl_table* find_entry (struct ctl_table_header**,struct ctl_dir*,char const*,int ) ;
 struct ctl_table_set* lookup_header_set (struct ctl_table_root*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (char const*) ;
 int sysctl_lock ;
 int unuse_table (struct ctl_table_header*) ;
 scalar_t__ use_table (struct ctl_table_header*) ;
 struct ctl_dir* xlate_dir (struct ctl_table_set*,int ) ;

__attribute__((used)) static int sysctl_follow_link(struct ctl_table_header **phead,
 struct ctl_table **pentry)
{
 struct ctl_table_header *head;
 struct ctl_table_root *root;
 struct ctl_table_set *set;
 struct ctl_table *entry;
 struct ctl_dir *dir;
 int ret;

 ret = 0;
 spin_lock(&sysctl_lock);
 root = (*pentry)->data;
 set = lookup_header_set(root);
 dir = xlate_dir(set, (*phead)->parent);
 if (IS_ERR(dir))
  ret = PTR_ERR(dir);
 else {
  const char *procname = (*pentry)->procname;
  head = ((void*)0);
  entry = find_entry(&head, dir, procname, strlen(procname));
  ret = -ENOENT;
  if (entry && use_table(head)) {
   unuse_table(*phead);
   *phead = head;
   *pentry = entry;
   ret = 0;
  }
 }

 spin_unlock(&sysctl_lock);
 return ret;
}
