
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int dummy; } ;


 int STATIC_KEY_CHECK_USE (struct static_key*) ;
 int __static_key_slow_dec_cpuslocked (struct static_key*) ;

void static_key_slow_dec_cpuslocked(struct static_key *key)
{
 STATIC_KEY_CHECK_USE(key);
 __static_key_slow_dec_cpuslocked(key);
}
