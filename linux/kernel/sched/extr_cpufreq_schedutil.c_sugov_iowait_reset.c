
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sugov_cpu {scalar_t__ last_update; int iowait_boost_pending; int iowait_boost; } ;
typedef scalar_t__ s64 ;


 int IOWAIT_BOOST_MIN ;
 scalar_t__ TICK_NSEC ;

__attribute__((used)) static bool sugov_iowait_reset(struct sugov_cpu *sg_cpu, u64 time,
          bool set_iowait_boost)
{
 s64 delta_ns = time - sg_cpu->last_update;


 if (delta_ns <= TICK_NSEC)
  return 0;

 sg_cpu->iowait_boost = set_iowait_boost ? IOWAIT_BOOST_MIN : 0;
 sg_cpu->iowait_boost_pending = set_iowait_boost;

 return 1;
}
