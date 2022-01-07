
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union nilfs_bmap_ptr_req {int bpr_req; int bpr_ptr; } ;
struct TYPE_2__ {void* bi_blkoff; void* bi_vblocknr; } ;
union nilfs_binfo {TYPE_1__ bi_v; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef int __u64 ;


 void* cpu_to_le64 (int ) ;
 struct inode* nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_dat_commit_start (struct inode*,int *,int ) ;
 int nilfs_dat_prepare_start (struct inode*,int *) ;

__attribute__((used)) static int nilfs_direct_assign_v(struct nilfs_bmap *direct,
     __u64 key, __u64 ptr,
     struct buffer_head **bh,
     sector_t blocknr,
     union nilfs_binfo *binfo)
{
 struct inode *dat = nilfs_bmap_get_dat(direct);
 union nilfs_bmap_ptr_req req;
 int ret;

 req.bpr_ptr = ptr;
 ret = nilfs_dat_prepare_start(dat, &req.bpr_req);
 if (!ret) {
  nilfs_dat_commit_start(dat, &req.bpr_req, blocknr);
  binfo->bi_v.bi_vblocknr = cpu_to_le64(ptr);
  binfo->bi_v.bi_blkoff = cpu_to_le64(key);
 }
 return ret;
}
