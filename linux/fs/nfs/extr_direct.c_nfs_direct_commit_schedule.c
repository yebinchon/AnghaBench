
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int inode; } ;
struct nfs_commit_info {int dummy; } ;


 int LIST_HEAD (int ) ;
 int mds_list ;
 int nfs_direct_write_reschedule (struct nfs_direct_req*) ;
 int nfs_generic_commit_list (int ,int *,int ,struct nfs_commit_info*) ;
 int nfs_init_cinfo_from_dreq (struct nfs_commit_info*,struct nfs_direct_req*) ;
 int nfs_scan_commit (int ,int *,struct nfs_commit_info*) ;

__attribute__((used)) static void nfs_direct_commit_schedule(struct nfs_direct_req *dreq)
{
 int res;
 struct nfs_commit_info cinfo;
 LIST_HEAD(mds_list);

 nfs_init_cinfo_from_dreq(&cinfo, dreq);
 nfs_scan_commit(dreq->inode, &mds_list, &cinfo);
 res = nfs_generic_commit_list(dreq->inode, &mds_list, 0, &cinfo);
 if (res < 0)
  nfs_direct_write_reschedule(dreq);
}
