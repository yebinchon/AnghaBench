
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct squashfs_sb_info {size_t next_meta_index; int meta_index_mutex; struct meta_index* meta_index; } ;
struct meta_index {int locked; int offset; int skip; scalar_t__ entries; scalar_t__ inode_number; } ;
struct inode {scalar_t__ i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct squashfs_sb_info* s_fs_info; } ;


 int ERROR (char*) ;
 int GFP_KERNEL ;
 int SQUASHFS_META_SLOTS ;
 int TRACE (char*,...) ;
 struct meta_index* kcalloc (int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct meta_index *empty_meta_index(struct inode *inode, int offset,
    int skip)
{
 struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
 struct meta_index *meta = ((void*)0);
 int i;

 mutex_lock(&msblk->meta_index_mutex);

 TRACE("empty_meta_index: offset %d, skip %d\n", offset, skip);

 if (msblk->meta_index == ((void*)0)) {






  msblk->meta_index = kcalloc(SQUASHFS_META_SLOTS,
   sizeof(*(msblk->meta_index)), GFP_KERNEL);
  if (msblk->meta_index == ((void*)0)) {
   ERROR("Failed to allocate meta_index\n");
   goto failed;
  }
  for (i = 0; i < SQUASHFS_META_SLOTS; i++) {
   msblk->meta_index[i].inode_number = 0;
   msblk->meta_index[i].locked = 0;
  }
  msblk->next_meta_index = 0;
 }

 for (i = SQUASHFS_META_SLOTS; i &&
   msblk->meta_index[msblk->next_meta_index].locked; i--)
  msblk->next_meta_index = (msblk->next_meta_index + 1) %
   SQUASHFS_META_SLOTS;

 if (i == 0) {
  TRACE("empty_meta_index: failed!\n");
  goto failed;
 }

 TRACE("empty_meta_index: returned meta entry %d, %p\n",
   msblk->next_meta_index,
   &msblk->meta_index[msblk->next_meta_index]);

 meta = &msblk->meta_index[msblk->next_meta_index];
 msblk->next_meta_index = (msblk->next_meta_index + 1) %
   SQUASHFS_META_SLOTS;

 meta->inode_number = inode->i_ino;
 meta->offset = offset;
 meta->skip = skip;
 meta->entries = 0;
 meta->locked = 1;

failed:
 mutex_unlock(&msblk->meta_index_mutex);
 return meta;
}
