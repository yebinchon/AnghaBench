
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio {int dummy; } ;


 int __blk_mq_sched_bio_merge (struct request_queue*,struct bio*,unsigned int) ;
 int bio_mergeable (struct bio*) ;
 scalar_t__ blk_queue_nomerges (struct request_queue*) ;

__attribute__((used)) static inline bool
blk_mq_sched_bio_merge(struct request_queue *q, struct bio *bio,
  unsigned int nr_segs)
{
 if (blk_queue_nomerges(q) || !bio_mergeable(bio))
  return 0;

 return __blk_mq_sched_bio_merge(q, bio, nr_segs);
}
