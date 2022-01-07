
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int dummy; } ;


 int cpus_read_lock () ;
 int cpus_read_unlock () ;
 int static_key_slow_inc_cpuslocked (struct static_key*) ;

void static_key_slow_inc(struct static_key *key)
{
 cpus_read_lock();
 static_key_slow_inc_cpuslocked(key);
 cpus_read_unlock();
}
