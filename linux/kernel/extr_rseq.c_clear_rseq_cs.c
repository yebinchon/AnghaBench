
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_2__* rseq; } ;
struct TYPE_3__ {int ptr64; } ;
struct TYPE_4__ {TYPE_1__ rseq_cs; } ;


 int EFAULT ;
 scalar_t__ clear_user (int *,int) ;

__attribute__((used)) static int clear_rseq_cs(struct task_struct *t)
{
 if (clear_user(&t->rseq->rseq_cs.ptr64, sizeof(t->rseq->rseq_cs.ptr64)))
  return -EFAULT;
 return 0;
}
