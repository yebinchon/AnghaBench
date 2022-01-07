
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct workqueue_attrs {int cpumask; int nice; } ;


 int BITS_TO_LONGS (int ) ;
 int cpumask_bits (int ) ;
 int jhash (int ,int,int ) ;
 int jhash_1word (int ,int ) ;
 int nr_cpumask_bits ;

__attribute__((used)) static u32 wqattrs_hash(const struct workqueue_attrs *attrs)
{
 u32 hash = 0;

 hash = jhash_1word(attrs->nice, hash);
 hash = jhash(cpumask_bits(attrs->cpumask),
       BITS_TO_LONGS(nr_cpumask_bits) * sizeof(long), hash);
 return hash;
}
