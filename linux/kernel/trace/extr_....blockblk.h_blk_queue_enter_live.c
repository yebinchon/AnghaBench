
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int q_usage_counter; } ;


 int percpu_ref_get (int *) ;

__attribute__((used)) static inline void blk_queue_enter_live(struct request_queue *q)
{






 percpu_ref_get(&q->q_usage_counter);
}
