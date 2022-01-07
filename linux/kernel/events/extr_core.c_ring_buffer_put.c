
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int rcu_head; int event_list; int refcount; } ;


 int WARN_ON_ONCE (int) ;
 int call_rcu (int *,int ) ;
 int list_empty (int *) ;
 int rb_free_rcu ;
 int refcount_dec_and_test (int *) ;

void ring_buffer_put(struct ring_buffer *rb)
{
 if (!refcount_dec_and_test(&rb->refcount))
  return;

 WARN_ON_ONCE(!list_empty(&rb->event_list));

 call_rcu(&rb->rcu_head, rb_free_rcu);
}
