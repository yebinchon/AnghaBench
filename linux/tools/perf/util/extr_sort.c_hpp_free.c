
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int dummy; } ;


 int free (struct perf_hpp_fmt*) ;

__attribute__((used)) static void hpp_free(struct perf_hpp_fmt *fmt)
{
 free(fmt);
}
