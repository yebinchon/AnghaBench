
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef void list_head ;
typedef int loff_t ;


 int list_next_rcu (void*) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;

__attribute__((used)) static void *smk_seq_start(struct seq_file *s, loff_t *pos,
    struct list_head *head)
{
 struct list_head *list;
 int i = *pos;

 rcu_read_lock();
 for (list = rcu_dereference(list_next_rcu(head));
  list != head;
  list = rcu_dereference(list_next_rcu(list))) {
  if (i-- == 0)
   return list;
 }

 return ((void*)0);
}
