
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_page; } ;
struct nfs_commit_info {int dummy; } ;


 int __set_page_dirty_nobuffers (int ) ;

__attribute__((used)) static void
nfs_commit_resched_write(struct nfs_commit_info *cinfo,
  struct nfs_page *req)
{
 __set_page_dirty_nobuffers(req->wb_page);
}
