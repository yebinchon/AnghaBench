
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {int (* memcpy ) (void*,void*,size_t) ;} ;
struct function {TYPE_1__ fn; } ;
typedef int (* memcpy_t ) (void*,void*,size_t) ;


 unsigned long long get_cycles () ;
 int memset (void*,int ,size_t) ;
 int nr_loops ;

__attribute__((used)) static u64 do_memcpy_cycles(const struct function *r, size_t size, void *src, void *dst)
{
 u64 cycle_start = 0ULL, cycle_end = 0ULL;
 memcpy_t fn = r->fn.memcpy;
 int i;


 memset(src, 0, size);





 fn(dst, src, size);

 cycle_start = get_cycles();
 for (i = 0; i < nr_loops; ++i)
  fn(dst, src, size);
 cycle_end = get_cycles();

 return cycle_end - cycle_start;
}
