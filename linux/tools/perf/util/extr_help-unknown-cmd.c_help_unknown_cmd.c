
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmdnames {int cnt; TYPE_1__** names; } ;
typedef int main_cmds ;
struct TYPE_2__ {unsigned int len; char* name; } ;


 scalar_t__ add_cmd_list (struct cmdnames*,struct cmdnames*) ;
 int autocorrect ;
 int clean_cmdnames (struct cmdnames*) ;
 int cmdname_compare ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 unsigned int levenshtein (char const*,char*,int ,int,int,int) ;
 int levenshtein_compare ;
 int load_command_list (char*,struct cmdnames*,struct cmdnames*) ;
 int memset (struct cmdnames*,int ,int) ;
 int perf_config (int ,int *) ;
 int perf_unknown_cmd_config ;
 int poll (int *,int ,int) ;
 int qsort (TYPE_1__**,int,int,int ) ;
 int stderr ;
 int uniq (struct cmdnames*) ;

const char *help_unknown_cmd(const char *cmd)
{
 unsigned int i, n = 0, best_similarity = 0;
 struct cmdnames main_cmds, other_cmds;

 memset(&main_cmds, 0, sizeof(main_cmds));
 memset(&other_cmds, 0, sizeof(main_cmds));

 perf_config(perf_unknown_cmd_config, ((void*)0));

 load_command_list("perf-", &main_cmds, &other_cmds);

 if (add_cmd_list(&main_cmds, &other_cmds) < 0) {
  fprintf(stderr, "ERROR: Failed to allocate command list for unknown command.\n");
  goto end;
 }
 qsort(main_cmds.names, main_cmds.cnt,
       sizeof(main_cmds.names), cmdname_compare);
 uniq(&main_cmds);

 if (main_cmds.cnt) {

  for (i = 0; i < main_cmds.cnt; ++i)
   main_cmds.names[i]->len =
    levenshtein(cmd, main_cmds.names[i]->name, 0, 2, 1, 4);

  qsort(main_cmds.names, main_cmds.cnt,
        sizeof(*main_cmds.names), levenshtein_compare);

  best_similarity = main_cmds.names[0]->len;
  n = 1;
  while (n < main_cmds.cnt && best_similarity == main_cmds.names[n]->len)
   ++n;
 }

 if (autocorrect && n == 1) {
  const char *assumed = main_cmds.names[0]->name;

  main_cmds.names[0] = ((void*)0);
  clean_cmdnames(&main_cmds);
  fprintf(stderr, "WARNING: You called a perf program named '%s', "
   "which does not exist.\n"
   "Continuing under the assumption that you meant '%s'\n",
   cmd, assumed);
  if (autocorrect > 0) {
   fprintf(stderr, "in %0.1f seconds automatically...\n",
    (float)autocorrect/10.0);
   poll(((void*)0), 0, autocorrect * 100);
  }
  return assumed;
 }

 fprintf(stderr, "perf: '%s' is not a perf-command. See 'perf --help'.\n", cmd);

 if (main_cmds.cnt && best_similarity < 6) {
  fprintf(stderr, "\nDid you mean %s?\n",
   n < 2 ? "this": "one of these");

  for (i = 0; i < n; i++)
   fprintf(stderr, "\t%s\n", main_cmds.names[i]->name);
 }
end:
 exit(1);
}
