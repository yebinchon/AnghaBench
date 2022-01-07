
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;
struct ctl_dir {int dummy; } ;


 struct ctl_table* find_entry (struct ctl_table_header**,struct ctl_dir*,char const*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_lock ;
 scalar_t__ use_table (struct ctl_table_header*) ;

__attribute__((used)) static struct ctl_table *lookup_entry(struct ctl_table_header **phead,
          struct ctl_dir *dir,
          const char *name, int namelen)
{
 struct ctl_table_header *head;
 struct ctl_table *entry;

 spin_lock(&sysctl_lock);
 entry = find_entry(&head, dir, name, namelen);
 if (entry && use_table(head))
  *phead = head;
 else
  entry = ((void*)0);
 spin_unlock(&sysctl_lock);
 return entry;
}
