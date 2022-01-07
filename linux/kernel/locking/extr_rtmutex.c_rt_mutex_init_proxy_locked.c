
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex {int dummy; } ;


 int __rt_mutex_init (struct rt_mutex*,int *,int *) ;
 int debug_rt_mutex_proxy_lock (struct rt_mutex*,struct task_struct*) ;
 int rt_mutex_set_owner (struct rt_mutex*,struct task_struct*) ;

void rt_mutex_init_proxy_locked(struct rt_mutex *lock,
    struct task_struct *proxy_owner)
{
 __rt_mutex_init(lock, ((void*)0), ((void*)0));
 debug_rt_mutex_proxy_lock(lock, proxy_owner);
 rt_mutex_set_owner(lock, proxy_owner);
}
