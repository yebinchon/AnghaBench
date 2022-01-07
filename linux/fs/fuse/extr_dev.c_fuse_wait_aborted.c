
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int num_waiting; int blocked_waitq; } ;


 scalar_t__ atomic_read (int *) ;
 int smp_mb () ;
 int wait_event (int ,int) ;

void fuse_wait_aborted(struct fuse_conn *fc)
{

 smp_mb();
 wait_event(fc->blocked_waitq, atomic_read(&fc->num_waiting) == 0);
}
