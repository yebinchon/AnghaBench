
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aa_dfa {TYPE_1__** tables; } ;
struct TYPE_2__ {int td_lolen; } ;


 size_t YYTD_ID_ACCEPT ;
 int dfa_other_xindex (struct aa_dfa*,int) ;
 int dfa_user_xindex (struct aa_dfa*,int) ;
 int verify_xindex (int ,int) ;

__attribute__((used)) static bool verify_dfa_xindex(struct aa_dfa *dfa, int table_size)
{
 int i;
 for (i = 0; i < dfa->tables[YYTD_ID_ACCEPT]->td_lolen; i++) {
  if (!verify_xindex(dfa_user_xindex(dfa, i), table_size))
   return 0;
  if (!verify_xindex(dfa_other_xindex(dfa, i), table_size))
   return 0;
 }
 return 1;
}
