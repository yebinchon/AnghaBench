
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct aa_dfa {scalar_t__* tables; } ;


 int * BASE_TABLE (struct aa_dfa*) ;
 int * CHECK_TABLE (struct aa_dfa*) ;
 int * DEFAULT_TABLE (struct aa_dfa*) ;
 size_t* EQUIV_TABLE (struct aa_dfa*) ;
 int * NEXT_TABLE (struct aa_dfa*) ;
 size_t YYTD_ID_EC ;
 int match_char (unsigned int,int *,int *,int *,int *,size_t) ;

unsigned int aa_dfa_match_len(struct aa_dfa *dfa, unsigned int start,
         const char *str, int len)
{
 u16 *def = DEFAULT_TABLE(dfa);
 u32 *base = BASE_TABLE(dfa);
 u16 *next = NEXT_TABLE(dfa);
 u16 *check = CHECK_TABLE(dfa);
 unsigned int state = start;

 if (state == 0)
  return 0;


 if (dfa->tables[YYTD_ID_EC]) {

  u8 *equiv = EQUIV_TABLE(dfa);
  for (; len; len--)
   match_char(state, def, base, next, check,
       equiv[(u8) *str++]);
 } else {

  for (; len; len--)
   match_char(state, def, base, next, check, (u8) *str++);
 }

 return state;
}
