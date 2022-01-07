
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_dentry_ptr {int filename; int dentry; int bitmap; int nr_bitmap; int max; struct inode* inode; } ;
struct f2fs_dentry_block {int filename; int dentry; int dentry_bitmap; } ;


 int NR_DENTRY_IN_BLOCK ;
 int SIZE_OF_DENTRY_BITMAP ;

__attribute__((used)) static inline void make_dentry_ptr_block(struct inode *inode,
  struct f2fs_dentry_ptr *d, struct f2fs_dentry_block *t)
{
 d->inode = inode;
 d->max = NR_DENTRY_IN_BLOCK;
 d->nr_bitmap = SIZE_OF_DENTRY_BITMAP;
 d->bitmap = t->dentry_bitmap;
 d->dentry = t->dentry;
 d->filename = t->filename;
}
