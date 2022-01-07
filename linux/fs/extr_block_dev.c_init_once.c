
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_fsfreeze_mutex; int * bd_bdi; int bd_holder_disks; int bd_list; int bd_mutex; } ;
struct bdev_inode {int vfs_inode; struct block_device bdev; } ;


 int INIT_LIST_HEAD (int *) ;
 int inode_init_once (int *) ;
 int memset (struct block_device*,int ,int) ;
 int mutex_init (int *) ;
 int noop_backing_dev_info ;

__attribute__((used)) static void init_once(void *foo)
{
 struct bdev_inode *ei = (struct bdev_inode *) foo;
 struct block_device *bdev = &ei->bdev;

 memset(bdev, 0, sizeof(*bdev));
 mutex_init(&bdev->bd_mutex);
 INIT_LIST_HEAD(&bdev->bd_list);



 bdev->bd_bdi = &noop_backing_dev_info;
 inode_init_once(&ei->vfs_inode);

 mutex_init(&bdev->bd_fsfreeze_mutex);
}
