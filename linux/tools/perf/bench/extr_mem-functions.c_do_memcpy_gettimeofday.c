
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_2__ {int (* memcpy ) (void*,void*,size_t) ;} ;
struct function {TYPE_1__ fn; } ;
typedef int (* memcpy_t ) (void*,void*,size_t) ;


 int BUG_ON (int ) ;
 int gettimeofday (struct timeval*,int *) ;
 int nr_loops ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 double timeval2double (struct timeval*) ;

__attribute__((used)) static double do_memcpy_gettimeofday(const struct function *r, size_t size, void *src, void *dst)
{
 struct timeval tv_start, tv_end, tv_diff;
 memcpy_t fn = r->fn.memcpy;
 int i;





 fn(dst, src, size);

 BUG_ON(gettimeofday(&tv_start, ((void*)0)));
 for (i = 0; i < nr_loops; ++i)
  fn(dst, src, size);
 BUG_ON(gettimeofday(&tv_end, ((void*)0)));

 timersub(&tv_end, &tv_start, &tv_diff);

 return (double)(((double)size * nr_loops) / timeval2double(&tv_diff));
}
