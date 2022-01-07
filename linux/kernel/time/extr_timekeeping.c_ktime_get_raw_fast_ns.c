
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __ktime_get_fast_ns (int *) ;
 int tk_fast_raw ;

u64 ktime_get_raw_fast_ns(void)
{
 return __ktime_get_fast_ns(&tk_fast_raw);
}
