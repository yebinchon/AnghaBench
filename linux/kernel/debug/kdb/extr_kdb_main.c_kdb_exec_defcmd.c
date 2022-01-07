
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct defcmd_set {int count; int * command; int name; } ;


 int KDB_ARGCOUNT ;
 int KDB_NOTIMP ;
 struct defcmd_set* defcmd_set ;
 int defcmd_set_count ;
 int kdb_parse (int ) ;
 int kdb_printf (char*,char const*,...) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int kdb_exec_defcmd(int argc, const char **argv)
{
 int i, ret;
 struct defcmd_set *s;
 if (argc != 0)
  return KDB_ARGCOUNT;
 for (s = defcmd_set, i = 0; i < defcmd_set_count; ++i, ++s) {
  if (strcmp(s->name, argv[0]) == 0)
   break;
 }
 if (i == defcmd_set_count) {
  kdb_printf("kdb_exec_defcmd: could not find commands for %s\n",
      argv[0]);
  return KDB_NOTIMP;
 }
 for (i = 0; i < s->count; ++i) {


  argv = ((void*)0);
  kdb_printf("[%s]kdb> %s\n", s->name, s->command[i]);
  ret = kdb_parse(s->command[i]);
  if (ret)
   return ret;
 }
 return 0;
}
