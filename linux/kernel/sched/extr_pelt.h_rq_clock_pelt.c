
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rq {int dummy; } ;


 int rq_clock_task (struct rq*) ;

__attribute__((used)) static inline u64 rq_clock_pelt(struct rq *rq)
{
 return rq_clock_task(rq);
}
