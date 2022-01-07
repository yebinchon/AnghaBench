
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nilfs_bmap_ptr_req {int bpr_req; } ;
struct nilfs_bmap {scalar_t__ b_ptr_type; } ;
struct inode {int dummy; } ;


 scalar_t__ NILFS_BMAP_PTR_VS ;
 int nilfs_dat_commit_end (struct inode*,int *,int) ;

__attribute__((used)) static inline void nilfs_bmap_commit_end_ptr(struct nilfs_bmap *bmap,
          union nilfs_bmap_ptr_req *req,
          struct inode *dat)
{
 if (dat)
  nilfs_dat_commit_end(dat, &req->bpr_req,
         bmap->b_ptr_type == NILFS_BMAP_PTR_VS);
}
