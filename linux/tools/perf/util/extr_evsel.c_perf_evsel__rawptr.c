
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {int offset; int flags; } ;
struct perf_sample {void* raw_data; } ;
struct evsel {int dummy; } ;


 int TEP_FIELD_IS_DYNAMIC ;
 struct tep_format_field* perf_evsel__field (struct evsel*,char const*) ;

void *perf_evsel__rawptr(struct evsel *evsel, struct perf_sample *sample,
    const char *name)
{
 struct tep_format_field *field = perf_evsel__field(evsel, name);
 int offset;

 if (!field)
  return ((void*)0);

 offset = field->offset;

 if (field->flags & TEP_FIELD_IS_DYNAMIC) {
  offset = *(int *)(sample->raw_data + field->offset);
  offset &= 0xffff;
 }

 return sample->raw_data + offset;
}
