
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sighand_struct {int signalfd_wqh; int siglock; } ;


 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void sighand_ctor(void *data)
{
 struct sighand_struct *sighand = data;

 spin_lock_init(&sighand->siglock);
 init_waitqueue_head(&sighand->signalfd_wqh);
}
