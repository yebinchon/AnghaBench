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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int i_disksize; } ;

/* Variables and functions */
 int CONVERT_INLINE_DATA ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 int FALL_BACK_TO_NONDELALLOC ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*,unsigned long) ; 
 int FUNC2 (struct inode*,int,unsigned int,unsigned int,struct page*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int FUNC9 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ; 
 int FUNC10 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct file *file,
			     struct address_space *mapping,
			     loff_t pos, unsigned len, unsigned copied,
			     struct page *page, void *fsdata)
{
	struct inode *inode = mapping->host;
	int ret = 0, ret2;
	handle_t *handle = FUNC4();
	loff_t new_i_size;
	unsigned long start, end;
	int write_mode = (int)(unsigned long)fsdata;

	if (write_mode == FALL_BACK_TO_NONDELALLOC)
		return FUNC9(file, mapping, pos,
				      len, copied, page, fsdata);

	FUNC11(inode, pos, len, copied);
	start = pos & (PAGE_SIZE - 1);
	end = start + copied - 1;

	/*
	 * generic_write_end() will run mark_inode_dirty() if i_size
	 * changes.  So let's piggyback the i_disksize mark_inode_dirty
	 * into that.
	 */
	new_i_size = pos + copied;
	if (copied && new_i_size > FUNC0(inode)->i_disksize) {
		if (FUNC3(inode) ||
		    FUNC1(page, end)) {
			FUNC8(inode, new_i_size);
			/* We need to mark inode dirty even if
			 * new_i_size is less that inode->i_size
			 * bu greater than i_disksize.(hint delalloc)
			 */
			FUNC6(handle, inode);
		}
	}

	if (write_mode != CONVERT_INLINE_DATA &&
	    FUNC7(inode, EXT4_STATE_MAY_INLINE_DATA) &&
	    FUNC3(inode))
		ret2 = FUNC2(inode, pos, len, copied,
						     page);
	else
		ret2 = FUNC10(file, mapping, pos, len, copied,
							page, fsdata);

	copied = ret2;
	if (ret2 < 0)
		ret = ret2;
	ret2 = FUNC5(handle);
	if (!ret)
		ret = ret2;

	return ret ? ret : copied;
}