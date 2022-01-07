
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_hpp_fmt {int header; } ;
struct data__file {struct diff_hpp_fmt* fmt; } ;


 int PERF_HPP_DIFF__MAX_INDEX ;
 int zfree (int *) ;

__attribute__((used)) static void data__free(struct data__file *d)
{
 int col;

 for (col = 0; col < PERF_HPP_DIFF__MAX_INDEX; col++) {
  struct diff_hpp_fmt *fmt = &d->fmt[col];

  zfree(&fmt->header);
 }
}
