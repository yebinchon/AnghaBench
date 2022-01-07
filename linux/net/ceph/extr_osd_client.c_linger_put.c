
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_linger_request {int kref; } ;


 int kref_put (int *,int ) ;
 int linger_release ;

__attribute__((used)) static void linger_put(struct ceph_osd_linger_request *lreq)
{
 if (lreq)
  kref_put(&lreq->kref, linger_release);
}
