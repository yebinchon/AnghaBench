
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int dummy; } ;


 int abort_request (struct ceph_osd_request*,int) ;

__attribute__((used)) static int abort_fn(struct ceph_osd_request *req, void *arg)
{
 int err = *(int *)arg;

 abort_request(req, err);
 return 0;
}
