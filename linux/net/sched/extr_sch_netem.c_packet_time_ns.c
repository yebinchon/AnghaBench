
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct netem_sched_data {int cell_size; int cell_overhead; int rate; int cell_size_reciprocal; scalar_t__ packet_overhead; } ;


 int NSEC_PER_SEC ;
 int div64_u64 (int,int ) ;
 int reciprocal_divide (int,int ) ;

__attribute__((used)) static u64 packet_time_ns(u64 len, const struct netem_sched_data *q)
{
 len += q->packet_overhead;

 if (q->cell_size) {
  u32 cells = reciprocal_divide(len, q->cell_size_reciprocal);

  if (len > cells * q->cell_size)
   cells++;
  len = cells * (q->cell_size + q->cell_overhead);
 }

 return div64_u64(len * NSEC_PER_SEC, q->rate);
}
