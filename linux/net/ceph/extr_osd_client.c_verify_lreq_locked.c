
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_linger_request {int lock; } ;


 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static inline void verify_lreq_locked(struct ceph_osd_linger_request *lreq)
{
 WARN_ON(!mutex_is_locked(&lreq->lock));
}
