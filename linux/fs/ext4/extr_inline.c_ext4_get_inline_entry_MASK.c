#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct ext4_iloc {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EXT4_MIN_INLINE_DATA_SIZE ; 
 unsigned int FUNC1 (struct inode*) ; 
 void* FUNC2 (struct inode*,struct ext4_iloc*) ; 
 TYPE_1__* FUNC3 (struct ext4_iloc*) ; 

__attribute__((used)) static inline struct ext4_dir_entry_2 *
FUNC4(struct inode *inode,
		      struct ext4_iloc *iloc,
		      unsigned int offset,
		      void **inline_start,
		      int *inline_size)
{
	void *inline_pos;

	FUNC0(offset > FUNC1(inode));

	if (offset < EXT4_MIN_INLINE_DATA_SIZE) {
		inline_pos = (void *)FUNC3(iloc)->i_block;
		*inline_size = EXT4_MIN_INLINE_DATA_SIZE;
	} else {
		inline_pos = FUNC2(inode, iloc);
		offset -= EXT4_MIN_INLINE_DATA_SIZE;
		*inline_size = FUNC1(inode) -
				EXT4_MIN_INLINE_DATA_SIZE;
	}

	if (inline_start)
		*inline_start = inline_pos;
	return (struct ext4_dir_entry_2 *)(inline_pos + offset);
}