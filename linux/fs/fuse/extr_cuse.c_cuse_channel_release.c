
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_dev {int fc; } ;
struct file {struct fuse_dev* private_data; } ;
struct cuse_conn {int fc; TYPE_1__* cdev; scalar_t__ dev; int list; } ;
struct TYPE_2__ {int dev; } ;


 int cdev_del (TYPE_1__*) ;
 int cuse_lock ;
 int device_unregister (scalar_t__) ;
 struct cuse_conn* fc_to_cc (int ) ;
 int fuse_conn_put (int *) ;
 int fuse_dev_release (struct inode*,struct file*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_chrdev_region (int ,int) ;

__attribute__((used)) static int cuse_channel_release(struct inode *inode, struct file *file)
{
 struct fuse_dev *fud = file->private_data;
 struct cuse_conn *cc = fc_to_cc(fud->fc);
 int rc;


 mutex_lock(&cuse_lock);
 list_del_init(&cc->list);
 mutex_unlock(&cuse_lock);


 if (cc->dev)
  device_unregister(cc->dev);
 if (cc->cdev) {
  unregister_chrdev_region(cc->cdev->dev, 1);
  cdev_del(cc->cdev);
 }

 fuse_conn_put(&cc->fc);

 rc = fuse_dev_release(inode, file);

 return rc;
}
