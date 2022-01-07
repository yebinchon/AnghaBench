
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_field {int dummy; } ;
struct tep_format_field {int dummy; } ;
struct evsel {int dummy; } ;


 struct tep_format_field* perf_evsel__field (struct evsel*,char const*) ;
 int tp_field__init_ptr (struct tp_field*,struct tep_format_field*) ;

__attribute__((used)) static int perf_evsel__init_tp_ptr_field(struct evsel *evsel,
      struct tp_field *field,
      const char *name)
{
 struct tep_format_field *format_field = perf_evsel__field(evsel, name);

 if (format_field == ((void*)0))
  return -1;

 return tp_field__init_ptr(field, format_field);
}
