
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terms_test {int str; } ;


 int pr_debug (char*,unsigned int,int ) ;
 int test_term (struct terms_test*) ;

__attribute__((used)) static int test_terms(struct terms_test *terms, unsigned cnt)
{
 int ret = 0;
 unsigned i;

 for (i = 0; i < cnt; i++) {
  struct terms_test *t = &terms[i];

  pr_debug("running test %d '%s'\n", i, t->str);
  ret = test_term(t);
  if (ret)
   break;
 }

 return ret;
}
