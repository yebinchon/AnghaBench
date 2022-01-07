
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_page {int wb_nio; } ;
struct TYPE_2__ {int flags; } ;


 int NFS_CONTEXT_RESEND_WRITES ;
 int nfs_end_page_writeback (struct nfs_page*) ;
 int nfs_mark_request_dirty (struct nfs_page*) ;
 int nfs_release_request (struct nfs_page*) ;
 TYPE_1__* nfs_req_openctx (struct nfs_page*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs_redirty_request(struct nfs_page *req)
{

 req->wb_nio++;
 nfs_mark_request_dirty(req);
 set_bit(NFS_CONTEXT_RESEND_WRITES, &nfs_req_openctx(req)->flags);
 nfs_end_page_writeback(req);
 nfs_release_request(req);
}
