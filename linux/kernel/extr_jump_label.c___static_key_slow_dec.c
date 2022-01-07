
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int dummy; } ;


 int __static_key_slow_dec_cpuslocked (struct static_key*) ;
 int cpus_read_lock () ;
 int cpus_read_unlock () ;

__attribute__((used)) static void __static_key_slow_dec(struct static_key *key)
{
 cpus_read_lock();
 __static_key_slow_dec_cpuslocked(key);
 cpus_read_unlock();
}
