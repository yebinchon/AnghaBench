
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int r_t; int r_private_item; int r_mc_node; int r_node; int r_completion; int r_kref; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 int memset (struct ceph_osd_request*,int ,int) ;
 int target_init (int *) ;

__attribute__((used)) static void request_init(struct ceph_osd_request *req)
{

 memset(req, 0, sizeof(*req));

 kref_init(&req->r_kref);
 init_completion(&req->r_completion);
 RB_CLEAR_NODE(&req->r_node);
 RB_CLEAR_NODE(&req->r_mc_node);
 INIT_LIST_HEAD(&req->r_private_item);

 target_init(&req->r_t);
}
