
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCHED_FIFO ;
 int SCHED_RR ;

__attribute__((used)) static inline int rt_policy(int policy)
{
 return policy == SCHED_FIFO || policy == SCHED_RR;
}
