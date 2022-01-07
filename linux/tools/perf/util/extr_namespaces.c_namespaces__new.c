
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_record_namespaces {int nr_namespaces; int link_info; } ;
struct perf_ns_link_info {int dummy; } ;
struct namespaces {int end_time; int link_info; } ;


 int NR_NAMESPACES ;
 int memcpy (int ,int ,int) ;
 struct namespaces* zalloc (int) ;

struct namespaces *namespaces__new(struct perf_record_namespaces *event)
{
 struct namespaces *namespaces;
 u64 link_info_size = ((event ? event->nr_namespaces : NR_NAMESPACES) *
         sizeof(struct perf_ns_link_info));

 namespaces = zalloc(sizeof(struct namespaces) + link_info_size);
 if (!namespaces)
  return ((void*)0);

 namespaces->end_time = -1;

 if (event)
  memcpy(namespaces->link_info, event->link_info, link_info_size);

 return namespaces;
}
