
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_BADREG ;
 int kdb_current_regs ;
 int kdb_printf (char*) ;

__attribute__((used)) static int kdb_check_regs(void)
{
 if (!kdb_current_regs) {
  kdb_printf("No current kdb registers."
      "  You may need to select another task\n");
  return KDB_BADREG;
 }
 return 0;
}
