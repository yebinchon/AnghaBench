
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int refcnt; } ;


 int lapb_free_cb (struct lapb_cb*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static __inline__ void lapb_put(struct lapb_cb *lapb)
{
 if (refcount_dec_and_test(&lapb->refcnt))
  lapb_free_cb(lapb);
}
