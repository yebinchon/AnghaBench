
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_uprobe {int tp; int ref_ctr_offset; int offset; int filename; } ;
typedef int buf ;


 int MAX_ARGSTR_LEN ;
 int snprintf (char*,int,char*,int,int ,...) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int) ;
 int trace_probe_match_command_args (int *,int,char const**) ;

__attribute__((used)) static bool trace_uprobe_match_command_head(struct trace_uprobe *tu,
         int argc, const char **argv)
{
 char buf[MAX_ARGSTR_LEN + 1];
 int len;

 if (!argc)
  return 1;

 len = strlen(tu->filename);
 if (strncmp(tu->filename, argv[0], len) || argv[0][len] != ':')
  return 0;

 if (tu->ref_ctr_offset == 0)
  snprintf(buf, sizeof(buf), "0x%0*lx",
    (int)(sizeof(void *) * 2), tu->offset);
 else
  snprintf(buf, sizeof(buf), "0x%0*lx(0x%lx)",
    (int)(sizeof(void *) * 2), tu->offset,
    tu->ref_ctr_offset);
 if (strcmp(buf, &argv[0][len + 1]))
  return 0;

 argc--; argv++;

 return trace_probe_match_command_args(&tu->tp, argc, argv);
}
