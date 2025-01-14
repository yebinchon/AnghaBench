
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_dentry_ptr {int max; int nr_bitmap; void* filename; void* dentry; void* bitmap; struct inode* inode; } ;


 int INLINE_DENTRY_BITMAP_SIZE (struct inode*) ;
 int INLINE_RESERVED_SIZE (struct inode*) ;
 int NR_INLINE_DENTRY (struct inode*) ;
 int SIZE_OF_DIR_ENTRY ;

__attribute__((used)) static inline void make_dentry_ptr_inline(struct inode *inode,
     struct f2fs_dentry_ptr *d, void *t)
{
 int entry_cnt = NR_INLINE_DENTRY(inode);
 int bitmap_size = INLINE_DENTRY_BITMAP_SIZE(inode);
 int reserved_size = INLINE_RESERVED_SIZE(inode);

 d->inode = inode;
 d->max = entry_cnt;
 d->nr_bitmap = bitmap_size;
 d->bitmap = t;
 d->dentry = t + bitmap_size + reserved_size;
 d->filename = t + bitmap_size + reserved_size +
     SIZE_OF_DIR_ENTRY * entry_cnt;
}
