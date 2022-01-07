
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int r_osd; int r_private_item; int r_mc_node; int r_node; } ;


 int RB_EMPTY_NODE (int *) ;
 int WARN_ON (int) ;
 int list_empty (int *) ;

__attribute__((used)) static void request_release_checks(struct ceph_osd_request *req)
{
 WARN_ON(!RB_EMPTY_NODE(&req->r_node));
 WARN_ON(!RB_EMPTY_NODE(&req->r_mc_node));
 WARN_ON(!list_empty(&req->r_private_item));
 WARN_ON(req->r_osd);
}
