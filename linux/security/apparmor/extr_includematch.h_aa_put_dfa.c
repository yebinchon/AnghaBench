
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_dfa {int count; } ;


 int aa_dfa_free_kref ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void aa_put_dfa(struct aa_dfa *dfa)
{
 if (dfa)
  kref_put(&dfa->count, aa_dfa_free_kref);
}
