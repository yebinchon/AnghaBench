
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_usage () ;
 int exec_cmd_init (char*,char const*,char const*,char const*) ;
 int handle_internal_command (int,char const**) ;
 int handle_options (int*,char const***) ;
 scalar_t__ help ;
 int pager_init (char const*) ;

int main(int argc, const char **argv)
{
 static const char *UNUSED = "OBJTOOL_NOT_IMPLEMENTED";


 exec_cmd_init("objtool", UNUSED, UNUSED, UNUSED);
 pager_init(UNUSED);

 argv++;
 argc--;
 handle_options(&argc, &argv);

 if (!argc || help)
  cmd_usage();

 handle_internal_command(argc, argv);

 return 0;
}
