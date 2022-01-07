
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int dummy; } ;
struct inode {int dummy; } ;


 int nilfs_dat_abort_alloc (struct inode*,struct nilfs_palloc_req*) ;
 int nilfs_dat_abort_end (struct inode*,struct nilfs_palloc_req*) ;

void nilfs_dat_abort_update(struct inode *dat,
       struct nilfs_palloc_req *oldreq,
       struct nilfs_palloc_req *newreq)
{
 nilfs_dat_abort_end(dat, oldreq);
 nilfs_dat_abort_alloc(dat, newreq);
}
