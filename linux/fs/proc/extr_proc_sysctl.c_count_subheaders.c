
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table {struct ctl_table* child; scalar_t__ procname; } ;



__attribute__((used)) static int count_subheaders(struct ctl_table *table)
{
 int has_files = 0;
 int nr_subheaders = 0;
 struct ctl_table *entry;


 if (!table || !table->procname)
  return 1;

 for (entry = table; entry->procname; entry++) {
  if (entry->child)
   nr_subheaders += count_subheaders(entry->child);
  else
   has_files = 1;
 }
 return nr_subheaders + has_files;
}
