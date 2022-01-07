
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entries; } ;
struct evlist {TYPE_1__ core; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool perf_evlist__empty(struct evlist *evlist)
{
 return list_empty(&evlist->core.entries);
}
