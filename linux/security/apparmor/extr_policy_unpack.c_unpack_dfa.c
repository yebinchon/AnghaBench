
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ext {int start; int pos; } ;
struct aa_dfa {int dummy; } ;


 size_t ALIGN (size_t,int) ;
 int DFA_FLAG_VERIFY_STATES ;
 scalar_t__ IS_ERR (struct aa_dfa*) ;
 int TO_ACCEPT1_FLAG (int ) ;
 int TO_ACCEPT2_FLAG (int ) ;
 int YYTD_DATA32 ;
 struct aa_dfa* aa_dfa_unpack (char*,size_t,int) ;
 size_t unpack_blob (struct aa_ext*,char**,char*) ;

__attribute__((used)) static struct aa_dfa *unpack_dfa(struct aa_ext *e)
{
 char *blob = ((void*)0);
 size_t size;
 struct aa_dfa *dfa = ((void*)0);

 size = unpack_blob(e, &blob, "aadfa");
 if (size) {





  size_t sz = blob - (char *) e->start -
   ((e->pos - e->start) & 7);
  size_t pad = ALIGN(sz, 8) - sz;
  int flags = TO_ACCEPT1_FLAG(YYTD_DATA32) |
   TO_ACCEPT2_FLAG(YYTD_DATA32) | DFA_FLAG_VERIFY_STATES;
  dfa = aa_dfa_unpack(blob + pad, size - pad, flags);

  if (IS_ERR(dfa))
   return dfa;

 }

 return dfa;
}
