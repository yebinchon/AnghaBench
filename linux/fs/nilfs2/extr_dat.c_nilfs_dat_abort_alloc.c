
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int dummy; } ;
struct inode {int dummy; } ;


 int nilfs_dat_abort_entry (struct inode*,struct nilfs_palloc_req*) ;
 int nilfs_palloc_abort_alloc_entry (struct inode*,struct nilfs_palloc_req*) ;

void nilfs_dat_abort_alloc(struct inode *dat, struct nilfs_palloc_req *req)
{
 nilfs_dat_abort_entry(dat, req);
 nilfs_palloc_abort_alloc_entry(dat, req);
}
