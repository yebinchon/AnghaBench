
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nilfs_bmap_ptr_req {int bpr_req; } ;
struct nilfs_bmap {int b_last_allocated_ptr; } ;
struct inode {int dummy; } ;


 int nilfs_dat_abort_alloc (struct inode*,int *) ;

__attribute__((used)) static inline void nilfs_bmap_abort_alloc_ptr(struct nilfs_bmap *bmap,
           union nilfs_bmap_ptr_req *req,
           struct inode *dat)
{
 if (dat)
  nilfs_dat_abort_alloc(dat, &req->bpr_req);
 else
  bmap->b_last_allocated_ptr--;
}
