#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int dummy; } ;
struct f2fs_dentry_ptr {int max; int nr_bitmap; void* filename; void* dentry; void* bitmap; struct inode* inode; } ;

/* Variables and functions */
 int FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int SIZE_OF_DIR_ENTRY ; 

__attribute__((used)) static inline void FUNC3(struct inode *inode,
					struct f2fs_dentry_ptr *d, void *t)
{
	int entry_cnt = FUNC2(inode);
	int bitmap_size = FUNC0(inode);
	int reserved_size = FUNC1(inode);

	d->inode = inode;
	d->max = entry_cnt;
	d->nr_bitmap = bitmap_size;
	d->bitmap = t;
	d->dentry = t + bitmap_size + reserved_size;
	d->filename = t + bitmap_size + reserved_size +
					SIZE_OF_DIR_ENTRY * entry_cnt;
}