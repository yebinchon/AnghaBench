
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int extents_lock; } ;


 TYPE_1__* HFSPLUS_I (struct inode*) ;
 int hfsplus_ext_write_extent_locked (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hfsplus_ext_write_extent(struct inode *inode)
{
 int res;

 mutex_lock(&HFSPLUS_I(inode)->extents_lock);
 res = hfsplus_ext_write_extent_locked(inode);
 mutex_unlock(&HFSPLUS_I(inode)->extents_lock);

 return res;
}
