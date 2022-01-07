
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct perf_event_attr {int sample_type; int type; } ;
struct TYPE_3__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;
typedef enum perf_output_field { ____Placeholder_perf_output_field } perf_output_field ;
struct TYPE_4__ {int user_set_fields; int fields; } ;


 TYPE_2__* output ;
 int output_field2str (int) ;
 int output_type (int ) ;
 char* perf_evsel__name (struct evsel*) ;
 int pr_debug (char*,char const*,char const*,int ) ;
 int pr_err (char*,char const*,char const*,int ) ;

__attribute__((used)) static int perf_evsel__do_check_stype(struct evsel *evsel,
          u64 sample_type, const char *sample_msg,
          enum perf_output_field field,
          bool allow_user_set)
{
 struct perf_event_attr *attr = &evsel->core.attr;
 int type = output_type(attr->type);
 const char *evname;

 if (attr->sample_type & sample_type)
  return 0;

 if (output[type].user_set_fields & field) {
  if (allow_user_set)
   return 0;
  evname = perf_evsel__name(evsel);
  pr_err("Samples for '%s' event do not have %s attribute set. "
         "Cannot print '%s' field.\n",
         evname, sample_msg, output_field2str(field));
  return -1;
 }


 output[type].fields &= ~field;
 evname = perf_evsel__name(evsel);
 pr_debug("Samples for '%s' event do not have %s attribute set. "
   "Skipping '%s' field.\n",
   evname, sample_msg, output_field2str(field));

 return 0;
}
