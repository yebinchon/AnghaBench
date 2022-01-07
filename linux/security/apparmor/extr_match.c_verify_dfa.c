
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aa_dfa {TYPE_1__** tables; } ;
struct TYPE_2__ {size_t td_lolen; } ;


 int* BASE_TABLE (struct aa_dfa*) ;
 size_t* CHECK_TABLE (struct aa_dfa*) ;
 size_t* DEFAULT_TABLE (struct aa_dfa*) ;
 int EPROTO ;
 int MARK_DIFF_ENCODE ;
 int MATCH_FLAG_DIFF_ENCODE ;
 size_t* NEXT_TABLE (struct aa_dfa*) ;
 size_t YYTD_ID_BASE ;
 size_t YYTD_ID_NXT ;
 int base_idx (int) ;
 int pr_err (char*) ;

__attribute__((used)) static int verify_dfa(struct aa_dfa *dfa)
{
 size_t i, state_count, trans_count;
 int error = -EPROTO;

 state_count = dfa->tables[YYTD_ID_BASE]->td_lolen;
 trans_count = dfa->tables[YYTD_ID_NXT]->td_lolen;
 for (i = 0; i < state_count; i++) {
  if (!(BASE_TABLE(dfa)[i] & MATCH_FLAG_DIFF_ENCODE) &&
      (DEFAULT_TABLE(dfa)[i] >= state_count))
   goto out;
  if (base_idx(BASE_TABLE(dfa)[i]) + 255 >= trans_count) {
   pr_err("AppArmor DFA next/check upper bounds error\n");
   goto out;
  }
 }

 for (i = 0; i < trans_count; i++) {
  if (NEXT_TABLE(dfa)[i] >= state_count)
   goto out;
  if (CHECK_TABLE(dfa)[i] >= state_count)
   goto out;
 }


 for (i = 0; i < state_count; i++) {
  size_t j, k;

  for (j = i;
       (BASE_TABLE(dfa)[j] & MATCH_FLAG_DIFF_ENCODE) &&
       !(BASE_TABLE(dfa)[j] & MARK_DIFF_ENCODE);
       j = k) {
   k = DEFAULT_TABLE(dfa)[j];
   if (j == k)
    goto out;
   if (k < j)
    break;
   BASE_TABLE(dfa)[j] |= MARK_DIFF_ENCODE;
  }
 }
 error = 0;

out:
 return error;
}
