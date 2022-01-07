
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_generic_request {int completion; int (* complete_cb ) (struct ceph_mon_generic_request*) ;} ;


 int complete_all (int *) ;
 int put_generic_request (struct ceph_mon_generic_request*) ;
 int stub1 (struct ceph_mon_generic_request*) ;

__attribute__((used)) static void complete_generic_request(struct ceph_mon_generic_request *req)
{
 if (req->complete_cb)
  req->complete_cb(req);
 else
  complete_all(&req->completion);
 put_generic_request(req);
}
