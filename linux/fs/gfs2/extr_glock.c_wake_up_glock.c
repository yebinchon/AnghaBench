
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct gfs2_glock {int gl_name; } ;


 int TASK_NORMAL ;
 int __wake_up (int *,int ,int,int *) ;
 int * glock_waitqueue (int *) ;
 scalar_t__ waitqueue_active (int *) ;

__attribute__((used)) static void wake_up_glock(struct gfs2_glock *gl)
{
 wait_queue_head_t *wq = glock_waitqueue(&gl->gl_name);

 if (waitqueue_active(wq))
  __wake_up(wq, TASK_NORMAL, 1, &gl->gl_name);
}
