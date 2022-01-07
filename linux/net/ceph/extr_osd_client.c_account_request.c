
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_osd_request {int r_flags; int r_start_stamp; TYPE_1__* r_osdc; } ;
struct TYPE_2__ {int num_requests; } ;


 int CEPH_OSD_FLAG_ACK ;
 int CEPH_OSD_FLAG_ONDISK ;
 int CEPH_OSD_FLAG_READ ;
 int CEPH_OSD_FLAG_WRITE ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int jiffies ;

__attribute__((used)) static void account_request(struct ceph_osd_request *req)
{
 WARN_ON(req->r_flags & (CEPH_OSD_FLAG_ACK | CEPH_OSD_FLAG_ONDISK));
 WARN_ON(!(req->r_flags & (CEPH_OSD_FLAG_READ | CEPH_OSD_FLAG_WRITE)));

 req->r_flags |= CEPH_OSD_FLAG_ONDISK;
 atomic_inc(&req->r_osdc->num_requests);

 req->r_start_stamp = jiffies;
}
