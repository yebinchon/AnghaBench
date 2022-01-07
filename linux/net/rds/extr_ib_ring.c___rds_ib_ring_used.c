
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rds_ib_work_ring {scalar_t__ w_alloc_ctr; scalar_t__ w_nr; int w_free_ctr; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline u32 __rds_ib_ring_used(struct rds_ib_work_ring *ring)
{
 u32 diff;


 diff = ring->w_alloc_ctr - (u32) atomic_read(&ring->w_free_ctr);
 BUG_ON(diff > ring->w_nr);

 return diff;
}
