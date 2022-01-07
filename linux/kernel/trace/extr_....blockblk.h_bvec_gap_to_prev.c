
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio_vec {int dummy; } ;


 int __bvec_gap_to_prev (struct request_queue*,struct bio_vec*,unsigned int) ;
 int queue_virt_boundary (struct request_queue*) ;

__attribute__((used)) static inline bool bvec_gap_to_prev(struct request_queue *q,
  struct bio_vec *bprv, unsigned int offset)
{
 if (!queue_virt_boundary(q))
  return 0;
 return __bvec_gap_to_prev(q, bprv, offset);
}
