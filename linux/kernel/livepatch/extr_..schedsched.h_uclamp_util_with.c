
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int dummy; } ;



__attribute__((used)) static inline unsigned int uclamp_util_with(struct rq *rq, unsigned int util,
         struct task_struct *p)
{
 return util;
}
