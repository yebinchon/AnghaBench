
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_page {int wb_flags; } ;
struct nfs_commit_info {TYPE_1__* mds; } ;
struct TYPE_2__ {int ncommit; } ;


 int PG_CLEAN ;
 int atomic_long_dec (int *) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int test_and_clear_bit (int ,int *) ;

void
nfs_request_remove_commit_list(struct nfs_page *req,
          struct nfs_commit_info *cinfo)
{
 if (!test_and_clear_bit(PG_CLEAN, &(req)->wb_flags))
  return;
 nfs_list_remove_request(req);
 atomic_long_dec(&cinfo->mds->ncommit);
}
