
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
typedef unsigned int u16 ;
struct aa_dfa {scalar_t__* tables; } ;


 scalar_t__* ACCEPT_TABLE (struct aa_dfa*) ;
 scalar_t__* BASE_TABLE (struct aa_dfa*) ;
 unsigned int* CHECK_TABLE (struct aa_dfa*) ;
 unsigned int* DEFAULT_TABLE (struct aa_dfa*) ;
 size_t* EQUIV_TABLE (struct aa_dfa*) ;
 unsigned int* NEXT_TABLE (struct aa_dfa*) ;
 size_t YYTD_ID_EC ;
 size_t base_idx (scalar_t__) ;

unsigned int aa_dfa_matchn_until(struct aa_dfa *dfa, unsigned int start,
     const char *str, int n, const char **retpos)
{
 u16 *def = DEFAULT_TABLE(dfa);
 u32 *base = BASE_TABLE(dfa);
 u16 *next = NEXT_TABLE(dfa);
 u16 *check = CHECK_TABLE(dfa);
 u32 *accept = ACCEPT_TABLE(dfa);
 unsigned int state = start, pos;

 *retpos = ((void*)0);
 if (state == 0)
  return 0;


 if (dfa->tables[YYTD_ID_EC]) {

  u8 *equiv = EQUIV_TABLE(dfa);

  for (; n; n--) {
   pos = base_idx(base[state]) + equiv[(u8) *str++];
   if (check[pos] == state)
    state = next[pos];
   else
    state = def[state];
   if (accept[state])
    break;
  }
 } else {

  for (; n; n--) {
   pos = base_idx(base[state]) + (u8) *str++;
   if (check[pos] == state)
    state = next[pos];
   else
    state = def[state];
   if (accept[state])
    break;
  }
 }

 *retpos = str;
 return state;
}
