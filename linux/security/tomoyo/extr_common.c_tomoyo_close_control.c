
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {scalar_t__ type; } ;


 scalar_t__ TOMOYO_QUERY ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int tomoyo_answer_wait ;
 int tomoyo_notify_gc (struct tomoyo_io_buffer*,int) ;
 int tomoyo_query_observers ;
 int wake_up_all (int *) ;

void tomoyo_close_control(struct tomoyo_io_buffer *head)
{




 if (head->type == TOMOYO_QUERY &&
     atomic_dec_and_test(&tomoyo_query_observers))
  wake_up_all(&tomoyo_answer_wait);
 tomoyo_notify_gc(head, 0);
}
