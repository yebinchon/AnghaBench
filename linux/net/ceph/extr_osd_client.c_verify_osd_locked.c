
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_client {int lock; } ;
struct ceph_osd {int lock; struct ceph_osd_client* o_osdc; } ;


 int WARN_ON (int) ;
 scalar_t__ mutex_is_locked (int *) ;
 scalar_t__ rwsem_is_locked (int *) ;
 int rwsem_is_wrlocked (int *) ;

__attribute__((used)) static inline void verify_osd_locked(struct ceph_osd *osd)
{
 struct ceph_osd_client *osdc = osd->o_osdc;

 WARN_ON(!(mutex_is_locked(&osd->lock) &&
    rwsem_is_locked(&osdc->lock)) &&
  !rwsem_is_wrlocked(&osdc->lock));
}
