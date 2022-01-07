
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_probe {int nr_args; TYPE_1__* args; } ;
typedef int buf ;
struct TYPE_2__ {char* name; char* comm; } ;


 int MAX_ARGSTR_LEN ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char const*) ;

bool trace_probe_match_command_args(struct trace_probe *tp,
        int argc, const char **argv)
{
 char buf[MAX_ARGSTR_LEN + 1];
 int i;

 if (tp->nr_args < argc)
  return 0;

 for (i = 0; i < argc; i++) {
  snprintf(buf, sizeof(buf), "%s=%s",
    tp->args[i].name, tp->args[i].comm);
  if (strcmp(buf, argv[i]))
   return 0;
 }
 return 1;
}
