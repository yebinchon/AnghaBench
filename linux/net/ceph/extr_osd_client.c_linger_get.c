
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_linger_request {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct ceph_osd_linger_request *
linger_get(struct ceph_osd_linger_request *lreq)
{
 kref_get(&lreq->kref);
 return lreq;
}
