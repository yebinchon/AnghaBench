
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_usage () ;
 int fprintf (int ,char*,char const*) ;
 int help ;
 int stderr ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void handle_options(int *argc, const char ***argv)
{
 while (*argc > 0) {
  const char *cmd = (*argv)[0];

  if (cmd[0] != '-')
   break;

  if (!strcmp(cmd, "--help") || !strcmp(cmd, "-h")) {
   help = 1;
   break;
  } else {
   fprintf(stderr, "Unknown option: %s\n", cmd);
   cmd_usage();
  }

  (*argv)++;
  (*argc)--;
 }
}
