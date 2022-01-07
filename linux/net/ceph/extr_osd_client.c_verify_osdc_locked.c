
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_client {int lock; } ;


 int WARN_ON (int) ;
 int rwsem_is_locked (int *) ;

__attribute__((used)) static inline void verify_osdc_locked(struct ceph_osd_client *osdc)
{
 WARN_ON(!rwsem_is_locked(&osdc->lock));
}
