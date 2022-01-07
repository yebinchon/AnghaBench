
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; struct list_head* prev; } ;


 scalar_t__ list_empty (struct list_head*) ;
 int list_splice_init_rcu (struct list_head*,struct list_head*,int (*) ()) ;
 int rcu_assign_pointer (struct list_head*,struct list_head*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void smk_list_swap_rcu(struct list_head *public,
         struct list_head *private)
{
 struct list_head *first, *last;

 if (list_empty(public)) {
  list_splice_init_rcu(private, public, synchronize_rcu);
 } else {

  first = public->next;
  last = public->prev;


  private->prev->next = public;
  private->next->prev = public;
  rcu_assign_pointer(public->next, private->next);
  public->prev = private->prev;

  synchronize_rcu();



  private->next = first;
  private->prev = last;
  first->prev = private;
  last->next = private;
 }
}
