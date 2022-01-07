
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int dummy; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_lock ;
 int unuse_table (struct ctl_table_header*) ;

__attribute__((used)) static void sysctl_head_finish(struct ctl_table_header *head)
{
 if (!head)
  return;
 spin_lock(&sysctl_lock);
 unuse_table(head);
 spin_unlock(&sysctl_lock);
}
