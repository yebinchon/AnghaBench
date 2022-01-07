
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 scalar_t__ __add_event (struct list_head*,int*,struct perf_event_attr*,char*,int *,struct list_head*,int,int *) ;

__attribute__((used)) static int add_event(struct list_head *list, int *idx,
       struct perf_event_attr *attr, char *name,
       struct list_head *config_terms)
{
 return __add_event(list, idx, attr, name, ((void*)0), config_terms, 0, ((void*)0)) ? 0 : -ENOMEM;
}
