
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_struct {char const* cmd; } ;


 unsigned int ARRAY_SIZE (struct cmd_struct*) ;
 struct cmd_struct* commands ;
 int exit (int ) ;
 int run_builtin (struct cmd_struct*,int,char const**) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void handle_internal_command(int argc, const char **argv)
{
 const char *cmd = argv[0];
 unsigned int i;


 if (argc > 1 && !strcmp(argv[1], "--help")) {
  argv[1] = argv[0];
  argv[0] = cmd = "help";
 }

 for (i = 0; i < ARRAY_SIZE(commands); i++) {
  struct cmd_struct *p = commands+i;
  if (strcmp(p->cmd, cmd))
   continue;
  exit(run_builtin(p, argc, argv));
 }
}
