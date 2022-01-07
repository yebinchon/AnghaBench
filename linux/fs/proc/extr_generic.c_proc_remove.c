
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int parent; int name; } ;


 int remove_proc_subtree (int ,int ) ;

void proc_remove(struct proc_dir_entry *de)
{
 if (de)
  remove_proc_subtree(de->name, de->parent);
}
