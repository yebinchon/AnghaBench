
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {struct ctl_table* ctl_table; } ;
struct ctl_table {scalar_t__ procname; } ;


 int erase_entry (struct ctl_table_header*,struct ctl_table*) ;

__attribute__((used)) static void erase_header(struct ctl_table_header *head)
{
 struct ctl_table *entry;
 for (entry = head->ctl_table; entry->procname; entry++)
  erase_entry(head, entry);
}
