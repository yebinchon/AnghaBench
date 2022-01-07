
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;


 int __perf_evlist__add_default (struct evlist*,int) ;

__attribute__((used)) static inline int perf_evlist__add_default(struct evlist *evlist)
{
 return __perf_evlist__add_default(evlist, 1);
}
