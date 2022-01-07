
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct cdev {struct file_operations const* ops; int kobj; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int kobject_init (int *,int *) ;
 int ktype_cdev_default ;
 int memset (struct cdev*,int ,int) ;

void cdev_init(struct cdev *cdev, const struct file_operations *fops)
{
 memset(cdev, 0, sizeof *cdev);
 INIT_LIST_HEAD(&cdev->list);
 kobject_init(&cdev->kobj, &ktype_cdev_default);
 cdev->ops = fops;
}
