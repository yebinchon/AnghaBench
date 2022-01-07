
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_root {int dummy; } ;
struct ctl_table_header {int nreg; } ;
struct ctl_table {char* procname; struct ctl_table_root* data; int mode; } ;
struct ctl_dir {int dummy; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 struct ctl_table* find_entry (struct ctl_table_header**,struct ctl_dir*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static bool get_links(struct ctl_dir *dir,
 struct ctl_table *table, struct ctl_table_root *link_root)
{
 struct ctl_table_header *head;
 struct ctl_table *entry, *link;


 for (entry = table; entry->procname; entry++) {
  const char *procname = entry->procname;
  link = find_entry(&head, dir, procname, strlen(procname));
  if (!link)
   return 0;
  if (S_ISDIR(link->mode) && S_ISDIR(entry->mode))
   continue;
  if (S_ISLNK(link->mode) && (link->data == link_root))
   continue;
  return 0;
 }


 for (entry = table; entry->procname; entry++) {
  const char *procname = entry->procname;
  link = find_entry(&head, dir, procname, strlen(procname));
  head->nreg++;
 }
 return 1;
}
