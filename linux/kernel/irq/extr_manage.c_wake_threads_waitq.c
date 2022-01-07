
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int wait_for_threads; int threads_active; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void wake_threads_waitq(struct irq_desc *desc)
{
 if (atomic_dec_and_test(&desc->threads_active))
  wake_up(&desc->wait_for_threads);
}
