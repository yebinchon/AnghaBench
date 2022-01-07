
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int event_lock; int event_list; } ;
struct perf_event {int rcu_pending; int waitq; struct ring_buffer* rb; int rb_entry; int rcu_batches; } ;


 int WARN_ON_ONCE (int) ;
 int cond_synchronize_rcu (int ) ;
 int get_state_synchronize_rcu () ;
 scalar_t__ has_aux (struct perf_event*) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int perf_event_stop (struct perf_event*,int ) ;
 int rcu_assign_pointer (struct ring_buffer*,struct ring_buffer*) ;
 int ring_buffer_put (struct ring_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void ring_buffer_attach(struct perf_event *event,
          struct ring_buffer *rb)
{
 struct ring_buffer *old_rb = ((void*)0);
 unsigned long flags;

 if (event->rb) {




  WARN_ON_ONCE(event->rcu_pending);

  old_rb = event->rb;
  spin_lock_irqsave(&old_rb->event_lock, flags);
  list_del_rcu(&event->rb_entry);
  spin_unlock_irqrestore(&old_rb->event_lock, flags);

  event->rcu_batches = get_state_synchronize_rcu();
  event->rcu_pending = 1;
 }

 if (rb) {
  if (event->rcu_pending) {
   cond_synchronize_rcu(event->rcu_batches);
   event->rcu_pending = 0;
  }

  spin_lock_irqsave(&rb->event_lock, flags);
  list_add_rcu(&event->rb_entry, &rb->event_list);
  spin_unlock_irqrestore(&rb->event_lock, flags);
 }
 if (has_aux(event))
  perf_event_stop(event, 0);

 rcu_assign_pointer(event->rb, rb);

 if (old_rb) {
  ring_buffer_put(old_rb);





  wake_up_all(&event->waitq);
 }
}
