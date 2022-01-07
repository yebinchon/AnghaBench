
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rds_ib_work_ring {int w_nr; } ;


 int BUG_ON (int ) ;
 int __rds_ib_ring_used (struct rds_ib_work_ring*) ;

void rds_ib_ring_resize(struct rds_ib_work_ring *ring, u32 nr)
{


 BUG_ON(__rds_ib_ring_used(ring));
 ring->w_nr = nr;
}
