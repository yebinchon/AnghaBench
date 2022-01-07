
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_unlock (int *) ;
 int put_online_cpus () ;
 int wq_pool_mutex ;

__attribute__((used)) static void apply_wqattrs_unlock(void)
{
 mutex_unlock(&wq_pool_mutex);
 put_online_cpus();
}
