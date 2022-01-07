
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcov {int refcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void kcov_get(struct kcov *kcov)
{
 refcount_inc(&kcov->refcount);
}
