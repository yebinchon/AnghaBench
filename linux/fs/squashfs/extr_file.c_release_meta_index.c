
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct squashfs_sb_info {int meta_index_mutex; } ;
struct meta_index {scalar_t__ locked; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct squashfs_sb_info* s_fs_info; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void release_meta_index(struct inode *inode, struct meta_index *meta)
{
 struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
 mutex_lock(&msblk->meta_index_mutex);
 meta->locked = 0;
 mutex_unlock(&msblk->meta_index_mutex);
}
