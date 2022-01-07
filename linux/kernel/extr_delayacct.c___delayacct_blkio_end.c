
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct task_struct {struct task_delay_info* delays; } ;
struct task_delay_info {int flags; int blkio_start; int lock; int blkio_count; int blkio_delay; int swapin_count; int swapin_delay; } ;


 int DELAYACCT_PF_SWAPIN ;
 int delayacct_end (int *,int *,int *,int *) ;

void __delayacct_blkio_end(struct task_struct *p)
{
 struct task_delay_info *delays = p->delays;
 u64 *total;
 u32 *count;

 if (p->delays->flags & DELAYACCT_PF_SWAPIN) {
  total = &delays->swapin_delay;
  count = &delays->swapin_count;
 } else {
  total = &delays->blkio_delay;
  count = &delays->blkio_count;
 }

 delayacct_end(&delays->lock, &delays->blkio_start, total, count);
}
