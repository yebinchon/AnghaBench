
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct defcmd_set {char** command; int count; int usable; int help; int usage; int name; } ;


 int GFP_KDB ;
 int KDB_ENABLE_ALWAYS_SAFE ;
 int KDB_NOTIMP ;
 int defcmd_in_progress ;
 struct defcmd_set* defcmd_set ;
 int defcmd_set_count ;
 char** kcalloc (int,int,int ) ;
 int kdb_exec_defcmd ;
 int kdb_printf (char*,char const*) ;
 int kdb_register_flags (int ,int ,int ,int ,int ,int ) ;
 char* kdb_strdup (char const*,int ) ;
 int kfree (char**) ;
 int memcpy (char**,char**,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int kdb_defcmd2(const char *cmdstr, const char *argv0)
{
 struct defcmd_set *s = defcmd_set + defcmd_set_count - 1;
 char **save_command = s->command;
 if (strcmp(argv0, "endefcmd") == 0) {
  defcmd_in_progress = 0;
  if (!s->count)
   s->usable = 0;
  if (s->usable)




   kdb_register_flags(s->name, kdb_exec_defcmd, s->usage,
        s->help, 0,
        KDB_ENABLE_ALWAYS_SAFE);
  return 0;
 }
 if (!s->usable)
  return KDB_NOTIMP;
 s->command = kcalloc(s->count + 1, sizeof(*(s->command)), GFP_KDB);
 if (!s->command) {
  kdb_printf("Could not allocate new kdb_defcmd table for %s\n",
      cmdstr);
  s->usable = 0;
  return KDB_NOTIMP;
 }
 memcpy(s->command, save_command, s->count * sizeof(*(s->command)));
 s->command[s->count++] = kdb_strdup(cmdstr, GFP_KDB);
 kfree(save_command);
 return 0;
}
