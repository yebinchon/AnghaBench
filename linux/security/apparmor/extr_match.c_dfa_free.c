
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_dfa {int ** tables; } ;


 int ARRAY_SIZE (int **) ;
 int kfree (struct aa_dfa*) ;
 int kvfree (int *) ;

__attribute__((used)) static void dfa_free(struct aa_dfa *dfa)
{
 if (dfa) {
  int i;

  for (i = 0; i < ARRAY_SIZE(dfa->tables); i++) {
   kvfree(dfa->tables[i]);
   dfa->tables[i] = ((void*)0);
  }
  kfree(dfa);
 }
}
