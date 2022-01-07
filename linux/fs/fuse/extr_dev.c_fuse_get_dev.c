
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_dev {int dummy; } ;
struct file {int private_data; } ;


 struct fuse_dev* READ_ONCE (int ) ;

__attribute__((used)) static struct fuse_dev *fuse_get_dev(struct file *file)
{




 return READ_ONCE(file->private_data);
}
