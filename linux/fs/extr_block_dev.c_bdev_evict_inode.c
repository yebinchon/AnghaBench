
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; } ;
struct block_device {int * bd_bdi; int bd_list; } ;
struct TYPE_2__ {struct block_device bdev; } ;


 TYPE_1__* BDEV_I (struct inode*) ;
 int bdev_lock ;
 int bdi_put (int *) ;
 int clear_inode (struct inode*) ;
 int inode_detach_wb (struct inode*) ;
 int invalidate_inode_buffers (struct inode*) ;
 int list_del_init (int *) ;
 int noop_backing_dev_info ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void bdev_evict_inode(struct inode *inode)
{
 struct block_device *bdev = &BDEV_I(inode)->bdev;
 truncate_inode_pages_final(&inode->i_data);
 invalidate_inode_buffers(inode);
 clear_inode(inode);
 spin_lock(&bdev_lock);
 list_del_init(&bdev->bd_list);
 spin_unlock(&bdev_lock);

 inode_detach_wb(inode);
 if (bdev->bd_bdi != &noop_backing_dev_info) {
  bdi_put(bdev->bd_bdi);
  bdev->bd_bdi = &noop_backing_dev_info;
 }
}
