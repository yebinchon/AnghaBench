
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int dummy; } ;



__attribute__((used)) static inline bool need_pull_dl_task(struct rq *rq, struct task_struct *prev)
{
 return 0;
}
