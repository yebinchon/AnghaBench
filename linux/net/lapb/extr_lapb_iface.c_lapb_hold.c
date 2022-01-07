
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int refcnt; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static __inline__ void lapb_hold(struct lapb_cb *lapb)
{
 refcount_inc(&lapb->refcnt);
}
