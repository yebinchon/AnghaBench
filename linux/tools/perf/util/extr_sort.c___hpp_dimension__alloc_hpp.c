
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int level; int free; int sort_list; int list; } ;
struct hpp_dimension {int fmt; } ;


 int INIT_LIST_HEAD (int *) ;
 int hpp_free ;
 struct perf_hpp_fmt* memdup (int ,int) ;

__attribute__((used)) static struct perf_hpp_fmt *__hpp_dimension__alloc_hpp(struct hpp_dimension *hd,
             int level)
{
 struct perf_hpp_fmt *fmt;

 fmt = memdup(hd->fmt, sizeof(*fmt));
 if (fmt) {
  INIT_LIST_HEAD(&fmt->list);
  INIT_LIST_HEAD(&fmt->sort_list);
  fmt->free = hpp_free;
  fmt->level = level;
 }

 return fmt;
}
