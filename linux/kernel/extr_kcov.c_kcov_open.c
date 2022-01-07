
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcov {int lock; int refcount; int mode; } ;
struct inode {int dummy; } ;
struct file {struct kcov* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KCOV_MODE_DISABLED ;
 struct kcov* kzalloc (int,int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int kcov_open(struct inode *inode, struct file *filep)
{
 struct kcov *kcov;

 kcov = kzalloc(sizeof(*kcov), GFP_KERNEL);
 if (!kcov)
  return -ENOMEM;
 kcov->mode = KCOV_MODE_DISABLED;
 refcount_set(&kcov->refcount, 1);
 spin_lock_init(&kcov->lock);
 filep->private_data = kcov;
 return nonseekable_open(inode, filep);
}
