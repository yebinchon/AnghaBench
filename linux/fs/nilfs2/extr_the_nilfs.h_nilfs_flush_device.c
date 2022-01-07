
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_flushed_device; int ns_bdev; } ;


 int BARRIER ;
 int EIO ;
 int GFP_KERNEL ;
 int blkdev_issue_flush (int ,int ,int *) ;
 int nilfs_test_opt (struct the_nilfs*,int ) ;
 int smp_wmb () ;

__attribute__((used)) static inline int nilfs_flush_device(struct the_nilfs *nilfs)
{
 int err;

 if (!nilfs_test_opt(nilfs, BARRIER) || nilfs->ns_flushed_device)
  return 0;

 nilfs->ns_flushed_device = 1;




 smp_wmb();

 err = blkdev_issue_flush(nilfs->ns_bdev, GFP_KERNEL, ((void*)0));
 if (err != -EIO)
  err = 0;
 return err;
}
