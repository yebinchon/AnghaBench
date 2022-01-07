
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_msg_zcopy_queue {int zcookie_head; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void rds_message_zcopy_queue_init(struct rds_msg_zcopy_queue *q)
{
 spin_lock_init(&q->lock);
 INIT_LIST_HEAD(&q->zcookie_head);
}
