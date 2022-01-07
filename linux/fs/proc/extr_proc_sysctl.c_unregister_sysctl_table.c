
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {struct ctl_table_header* ctl_table_arg; } ;
struct ctl_table {struct ctl_table* ctl_table_arg; } ;


 int count_subheaders (struct ctl_table_header*) ;
 int drop_sysctl_table (struct ctl_table_header*) ;
 int kfree (struct ctl_table_header*) ;
 int might_sleep () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_lock ;
 scalar_t__ unlikely (int) ;

void unregister_sysctl_table(struct ctl_table_header * header)
{
 int nr_subheaders;
 might_sleep();

 if (header == ((void*)0))
  return;

 nr_subheaders = count_subheaders(header->ctl_table_arg);
 if (unlikely(nr_subheaders > 1)) {
  struct ctl_table_header **subheaders;
  int i;

  subheaders = (struct ctl_table_header **)(header + 1);
  for (i = nr_subheaders -1; i >= 0; i--) {
   struct ctl_table_header *subh = subheaders[i];
   struct ctl_table *table = subh->ctl_table_arg;
   unregister_sysctl_table(subh);
   kfree(table);
  }
  kfree(header);
  return;
 }

 spin_lock(&sysctl_lock);
 drop_sysctl_table(header);
 spin_unlock(&sysctl_lock);
}
