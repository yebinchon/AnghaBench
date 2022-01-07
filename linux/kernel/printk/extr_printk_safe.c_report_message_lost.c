
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printk_safe_seq_buf {int message_lost; } ;


 int atomic_xchg (int *,int ) ;
 int printk_deferred (char*,int) ;

__attribute__((used)) static void report_message_lost(struct printk_safe_seq_buf *s)
{
 int lost = atomic_xchg(&s->message_lost, 0);

 if (lost)
  printk_deferred("Lost %d message(s)!\n", lost);
}
