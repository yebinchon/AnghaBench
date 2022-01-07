
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifacaddr6 {int aca_refcnt; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void aca_get(struct ifacaddr6 *aca)
{
 refcount_inc(&aca->aca_refcnt);
}
