
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct squashfs_sb_info {int meta_index_mutex; struct meta_index* meta_index; } ;
struct meta_index {scalar_t__ inode_number; int offset; scalar_t__ locked; } ;
struct inode {scalar_t__ i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct squashfs_sb_info* s_fs_info; } ;


 int SQUASHFS_META_SLOTS ;
 int TRACE (char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct meta_index *locate_meta_index(struct inode *inode, int offset,
    int index)
{
 struct meta_index *meta = ((void*)0);
 struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
 int i;

 mutex_lock(&msblk->meta_index_mutex);

 TRACE("locate_meta_index: index %d, offset %d\n", index, offset);

 if (msblk->meta_index == ((void*)0))
  goto not_allocated;

 for (i = 0; i < SQUASHFS_META_SLOTS; i++) {
  if (msblk->meta_index[i].inode_number == inode->i_ino &&
    msblk->meta_index[i].offset >= offset &&
    msblk->meta_index[i].offset <= index &&
    msblk->meta_index[i].locked == 0) {
   TRACE("locate_meta_index: entry %d, offset %d\n", i,
     msblk->meta_index[i].offset);
   meta = &msblk->meta_index[i];
   offset = meta->offset;
  }
 }

 if (meta)
  meta->locked = 1;

not_allocated:
 mutex_unlock(&msblk->meta_index_mutex);

 return meta;
}
