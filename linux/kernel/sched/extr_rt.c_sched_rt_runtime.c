
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rt_rq {int rt_runtime; } ;



__attribute__((used)) static inline u64 sched_rt_runtime(struct rt_rq *rt_rq)
{
 return rt_rq->rt_runtime;
}
