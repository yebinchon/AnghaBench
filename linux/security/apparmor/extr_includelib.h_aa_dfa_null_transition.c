
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_dfa {int dummy; } ;


 unsigned int aa_dfa_next (struct aa_dfa*,unsigned int,int ) ;

__attribute__((used)) static inline unsigned int aa_dfa_null_transition(struct aa_dfa *dfa,
        unsigned int start)
{

 return aa_dfa_next(dfa, start, 0);
}
