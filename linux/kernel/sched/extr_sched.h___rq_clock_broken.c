
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rq {int clock; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline u64 __rq_clock_broken(struct rq *rq)
{
 return READ_ONCE(rq->clock);
}
