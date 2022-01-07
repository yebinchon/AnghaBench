
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int atomic64_t ;


 scalar_t__ atomic64_read (int *) ;

__attribute__((used)) static int tracing_map_cmp_atomic64(void *val_a, void *val_b)
{
 u64 a = atomic64_read((atomic64_t *)val_a);
 u64 b = atomic64_read((atomic64_t *)val_b);

 return (a > b) ? 1 : ((a < b) ? -1 : 0);
}
