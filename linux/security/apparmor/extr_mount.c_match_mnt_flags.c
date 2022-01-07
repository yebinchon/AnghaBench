
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_dfa {int dummy; } ;


 unsigned int aa_dfa_next (struct aa_dfa*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int match_mnt_flags(struct aa_dfa *dfa, unsigned int state,
        unsigned long flags)
{
 unsigned int i;

 for (i = 0; i <= 31 ; ++i) {
  if ((1 << i) & flags)
   state = aa_dfa_next(dfa, state, i + 1);
 }

 return state;
}
