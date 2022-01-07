
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int EINVAL ;
 struct option const OPT_BOOLEAN (char,char*,int*,int *) ;
 struct option const OPT_END () ;
 int PARSE_OPT_KEEP_UNKNOWN ;
 char** calloc (int,int) ;
 int free (char const**) ;
 int parse_options (int,char const**,struct option const*,int *,int ) ;
 scalar_t__ pmu_have_event (char*,char*) ;
 char* strdup (char*) ;

int kvm_add_default_arch_event(int *argc, const char **argv)
{
 const char **tmp;
 bool event = 0;
 int i, j = *argc;

 const struct option event_options[] = {
  OPT_BOOLEAN('e', "event", &event, ((void*)0)),
  OPT_END()
 };

 tmp = calloc(j + 1, sizeof(char *));
 if (!tmp)
  return -EINVAL;

 for (i = 0; i < j; i++)
  tmp[i] = argv[i];

 parse_options(j, tmp, event_options, ((void*)0), PARSE_OPT_KEEP_UNKNOWN);
 if (!event) {
  if (pmu_have_event("trace_imc", "trace_cycles")) {
   argv[j++] = strdup("-e");
   argv[j++] = strdup("trace_imc/trace_cycles/");
   *argc += 2;
  } else {
   free(tmp);
   return -EINVAL;
  }
 }

 free(tmp);
 return 0;
}
