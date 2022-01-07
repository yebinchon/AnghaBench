
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nilfs_bmap_ptr_req {int bpr_req; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;


 int nilfs_dat_prepare_end (struct inode*,int *) ;

__attribute__((used)) static inline int nilfs_bmap_prepare_end_ptr(struct nilfs_bmap *bmap,
          union nilfs_bmap_ptr_req *req,
          struct inode *dat)
{
 return dat ? nilfs_dat_prepare_end(dat, &req->bpr_req) : 0;
}
