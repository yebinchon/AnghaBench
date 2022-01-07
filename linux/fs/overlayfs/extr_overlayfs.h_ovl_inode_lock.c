
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__* OVL_I (struct inode*) ;
 int mutex_lock_interruptible (int *) ;

__attribute__((used)) static inline int ovl_inode_lock(struct inode *inode)
{
 return mutex_lock_interruptible(&OVL_I(inode)->lock);
}
