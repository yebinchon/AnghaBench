
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_page {int wb_flags; } ;
struct nfs_commit_info {TYPE_1__* mds; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int ncommit; } ;


 int PG_CLEAN ;
 int atomic_long_inc (int *) ;
 int nfs_list_add_request (struct nfs_page*,struct list_head*) ;
 int set_bit (int ,int *) ;

void
nfs_request_add_commit_list_locked(struct nfs_page *req, struct list_head *dst,
       struct nfs_commit_info *cinfo)
{
 set_bit(PG_CLEAN, &req->wb_flags);
 nfs_list_add_request(req, dst);
 atomic_long_inc(&cinfo->mds->ncommit);
}
