
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOING_KGDB ;
 int KDB_STATE_SET (int ) ;
 int KGDB_TRANS ;
 int kdb_gdb_state_pass (char*) ;
 int kdb_printf (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int kgdb_transition_check(char *buffer)
{
 if (buffer[0] != '+' && buffer[0] != '$') {
  KDB_STATE_SET(KGDB_TRANS);
  kdb_printf("%s", buffer);
 } else {
  int slen = strlen(buffer);
  if (slen > 3 && buffer[slen - 3] == '#') {
   kdb_gdb_state_pass(buffer);
   strcpy(buffer, "kgdb");
   KDB_STATE_SET(DOING_KGDB);
   return 1;
  }
 }
 return 0;
}
