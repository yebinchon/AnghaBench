
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WORK_CPU_UNBOUND ;
 int fscache_object_wq ;
 int workqueue_congested (int ,int ) ;

__attribute__((used)) static inline bool fscache_object_congested(void)
{
 return workqueue_congested(WORK_CPU_UNBOUND, fscache_object_wq);
}
