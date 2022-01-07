
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int dummy; } ;
struct inode {int dummy; } ;


 int ENOENT ;
 int WARN_ON (int) ;
 int nilfs_dat_prepare_entry (struct inode*,struct nilfs_palloc_req*,int ) ;

int nilfs_dat_prepare_start(struct inode *dat, struct nilfs_palloc_req *req)
{
 int ret;

 ret = nilfs_dat_prepare_entry(dat, req, 0);
 WARN_ON(ret == -ENOENT);
 return ret;
}
