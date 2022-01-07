
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int dummy; } ;
struct mm_struct {int dummy; } ;



__attribute__((used)) static inline void membarrier_switch_mm(struct rq *rq,
     struct mm_struct *prev_mm,
     struct mm_struct *next_mm)
{
}
