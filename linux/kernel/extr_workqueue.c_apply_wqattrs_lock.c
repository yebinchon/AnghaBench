
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_online_cpus () ;
 int mutex_lock (int *) ;
 int wq_pool_mutex ;

__attribute__((used)) static void apply_wqattrs_lock(void)
{

 get_online_cpus();
 mutex_lock(&wq_pool_mutex);
}
