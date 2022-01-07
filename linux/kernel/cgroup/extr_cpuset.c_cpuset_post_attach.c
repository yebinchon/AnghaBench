
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuset_migrate_mm_wq ;
 int flush_workqueue (int ) ;

__attribute__((used)) static void cpuset_post_attach(void)
{
 flush_workqueue(cpuset_migrate_mm_wq);
}
