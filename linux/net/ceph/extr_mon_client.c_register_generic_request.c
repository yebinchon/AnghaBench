
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_generic_request {scalar_t__ tid; struct ceph_mon_client* monc; } ;
struct ceph_mon_client {int generic_request_tree; scalar_t__ last_tid; } ;


 int WARN_ON (scalar_t__) ;
 int get_generic_request (struct ceph_mon_generic_request*) ;
 int insert_generic_request (int *,struct ceph_mon_generic_request*) ;

__attribute__((used)) static void register_generic_request(struct ceph_mon_generic_request *req)
{
 struct ceph_mon_client *monc = req->monc;

 WARN_ON(req->tid);

 get_generic_request(req);
 req->tid = ++monc->last_tid;
 insert_generic_request(&monc->generic_request_tree, req);
}
