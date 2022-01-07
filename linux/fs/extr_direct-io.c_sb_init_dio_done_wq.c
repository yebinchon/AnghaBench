
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct super_block {int s_dio_done_wq; int s_id; } ;


 int ENOMEM ;
 int WQ_MEM_RECLAIM ;
 struct workqueue_struct* alloc_workqueue (char*,int ,int ,int ) ;
 struct workqueue_struct* cmpxchg (int *,int *,struct workqueue_struct*) ;
 int destroy_workqueue (struct workqueue_struct*) ;

int sb_init_dio_done_wq(struct super_block *sb)
{
 struct workqueue_struct *old;
 struct workqueue_struct *wq = alloc_workqueue("dio/%s",
            WQ_MEM_RECLAIM, 0,
            sb->s_id);
 if (!wq)
  return -ENOMEM;



 old = cmpxchg(&sb->s_dio_done_wq, ((void*)0), wq);

 if (old)
  destroy_workqueue(wq);
 return 0;
}
