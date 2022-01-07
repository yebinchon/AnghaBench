
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_key {int dummy; } ;


 int TYPE_STAT_DATA ;
 scalar_t__ cpu_key_k_offset (struct cpu_key*) ;
 int cpu_key_k_offset_dec (struct cpu_key*) ;
 int set_cpu_key_k_type (struct cpu_key*,int ) ;

__attribute__((used)) static void indirect_decrement_key(struct cpu_key *key)
{
 cpu_key_k_offset_dec(key);
 if (cpu_key_k_offset(key) == 0)
  set_cpu_key_k_type(key, TYPE_STAT_DATA);
}
