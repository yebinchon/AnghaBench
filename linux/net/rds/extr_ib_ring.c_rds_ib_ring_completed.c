
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u32 ;
struct rds_ib_work_ring {int w_nr; } ;


 int rdsdebug (char*,struct rds_ib_work_ring*,unsigned long long,unsigned long long,unsigned long long) ;

u32 rds_ib_ring_completed(struct rds_ib_work_ring *ring, u32 wr_id, u32 oldest)
{
 u32 ret;

 if (oldest <= (unsigned long long)wr_id)
  ret = (unsigned long long)wr_id - oldest + 1;
 else
  ret = ring->w_nr - oldest + (unsigned long long)wr_id + 1;

 rdsdebug("ring %p ret %u wr_id %u oldest %u\n", ring, ret,
   wr_id, oldest);
 return ret;
}
