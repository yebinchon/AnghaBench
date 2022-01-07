
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmcaddr6 {int mca_refcnt; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void mca_get(struct ifmcaddr6 *mc)
{
 refcount_inc(&mc->mca_refcnt);
}
