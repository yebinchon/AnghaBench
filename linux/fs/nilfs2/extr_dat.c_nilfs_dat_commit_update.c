
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int dummy; } ;
struct inode {int dummy; } ;


 int nilfs_dat_commit_alloc (struct inode*,struct nilfs_palloc_req*) ;
 int nilfs_dat_commit_end (struct inode*,struct nilfs_palloc_req*,int) ;

void nilfs_dat_commit_update(struct inode *dat,
        struct nilfs_palloc_req *oldreq,
        struct nilfs_palloc_req *newreq, int dead)
{
 nilfs_dat_commit_end(dat, oldreq, dead);
 nilfs_dat_commit_alloc(dat, newreq);
}
