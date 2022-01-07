
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef void list_head ;
typedef int loff_t ;


 int list_next_rcu (void*) ;
 void* rcu_dereference (int ) ;

__attribute__((used)) static void *smk_seq_next(struct seq_file *s, void *v, loff_t *pos,
    struct list_head *head)
{
 struct list_head *list = v;

 ++*pos;
 list = rcu_dereference(list_next_rcu(list));

 return (list == head) ? ((void*)0) : list;
}
