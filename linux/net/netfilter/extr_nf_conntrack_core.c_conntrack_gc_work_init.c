
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conntrack_gc_work {int exiting; int next_gc_run; int dwork; } ;


 int HZ ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int gc_worker ;

__attribute__((used)) static void conntrack_gc_work_init(struct conntrack_gc_work *gc_work)
{
 INIT_DEFERRABLE_WORK(&gc_work->dwork, gc_worker);
 gc_work->next_gc_run = HZ;
 gc_work->exiting = 0;
}
