
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcov {int area; int refcount; } ;


 int kfree (struct kcov*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int vfree (int ) ;

__attribute__((used)) static void kcov_put(struct kcov *kcov)
{
 if (refcount_dec_and_test(&kcov->refcount)) {
  vfree(kcov->area);
  kfree(kcov);
 }
}
