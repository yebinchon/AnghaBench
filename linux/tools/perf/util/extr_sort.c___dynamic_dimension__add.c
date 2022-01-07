
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {int dummy; } ;
struct hpp_dynamic_entry {int raw_trace; int hpp; } ;
struct evsel {int dummy; } ;


 int ENOMEM ;
 struct hpp_dynamic_entry* __alloc_dynamic_entry (struct evsel*,struct tep_format_field*,int) ;
 int perf_hpp__register_sort_field (int *) ;

__attribute__((used)) static int __dynamic_dimension__add(struct evsel *evsel,
        struct tep_format_field *field,
        bool raw_trace, int level)
{
 struct hpp_dynamic_entry *hde;

 hde = __alloc_dynamic_entry(evsel, field, level);
 if (hde == ((void*)0))
  return -ENOMEM;

 hde->raw_trace = raw_trace;

 perf_hpp__register_sort_field(&hde->hpp);
 return 0;
}
