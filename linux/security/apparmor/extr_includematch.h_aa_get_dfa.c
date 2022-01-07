
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_dfa {int count; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct aa_dfa *aa_get_dfa(struct aa_dfa *dfa)
{
 if (dfa)
  kref_get(&(dfa->count));

 return dfa;
}
