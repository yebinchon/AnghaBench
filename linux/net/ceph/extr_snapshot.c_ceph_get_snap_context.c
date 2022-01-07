
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_snap_context {int nref; } ;


 int refcount_inc (int *) ;

struct ceph_snap_context *ceph_get_snap_context(struct ceph_snap_context *sc)
{
 if (sc)
  refcount_inc(&sc->nref);
 return sc;
}
