
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_snap_context {int nref; } ;


 int kfree (struct ceph_snap_context*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void ceph_put_snap_context(struct ceph_snap_context *sc)
{
 if (!sc)
  return;
 if (refcount_dec_and_test(&sc->nref)) {

  kfree(sc);
 }
}
