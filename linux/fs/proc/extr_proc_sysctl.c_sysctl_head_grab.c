
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int dummy; } ;


 int BUG_ON (int) ;
 int ENOENT ;
 struct ctl_table_header* ERR_PTR (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysctl_lock ;
 int use_table (struct ctl_table_header*) ;

__attribute__((used)) static struct ctl_table_header *sysctl_head_grab(struct ctl_table_header *head)
{
 BUG_ON(!head);
 spin_lock(&sysctl_lock);
 if (!use_table(head))
  head = ERR_PTR(-ENOENT);
 spin_unlock(&sysctl_lock);
 return head;
}
