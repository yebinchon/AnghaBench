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
struct page {int dummy; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,scalar_t__) ; 
 int FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,scalar_t__,unsigned int,unsigned int,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

__attribute__((used)) static int FUNC16(struct file *file,
			  struct address_space *mapping,
			  loff_t pos, unsigned len, unsigned copied,
			  struct page *page, void *fsdata)
{
	handle_t *handle = FUNC3();
	struct inode *inode = mapping->host;
	loff_t old_size = inode->i_size;
	int ret = 0, ret2;
	int i_size_changed = 0;
	int inline_data = FUNC2(inode);
	bool verity = FUNC10(inode);

	FUNC14(inode, pos, len, copied);
	if (inline_data) {
		ret = FUNC11(inode, pos, len,
						 copied, page);
		if (ret < 0) {
			FUNC15(page);
			FUNC13(page);
			goto errout;
		}
		copied = ret;
	} else
		copied = FUNC0(file, mapping, pos,
					 len, copied, page, fsdata);
	/*
	 * it's important to update i_size while still holding page lock:
	 * page writeout could otherwise come in and zero beyond i_size.
	 *
	 * If FS_IOC_ENABLE_VERITY is running on this inode, then Merkle tree
	 * blocks are being written past EOF, so skip the i_size update.
	 */
	if (!verity)
		i_size_changed = FUNC9(inode, pos + copied);
	FUNC15(page);
	FUNC13(page);

	if (old_size < pos && !verity)
		FUNC12(inode, old_size, pos);
	/*
	 * Don't mark the inode dirty under page lock. First, it unnecessarily
	 * makes the holding time of page lock longer. Second, it forces lock
	 * ordering of page lock and transaction start for journaling
	 * filesystems.
	 */
	if (i_size_changed || inline_data)
		FUNC5(handle, inode);

	if (pos + len > inode->i_size && !verity && FUNC1(inode))
		/* if we have allocated more blocks and copied
		 * less. We will have blocks allocated outside
		 * inode->i_size. So truncate them
		 */
		FUNC6(handle, inode);
errout:
	ret2 = FUNC4(handle);
	if (!ret)
		ret = ret2;

	if (pos + len > inode->i_size && !verity) {
		FUNC8(inode);
		/*
		 * If truncate failed early the inode might still be
		 * on the orphan list; we need to make sure the inode
		 * is removed from the orphan list in that case.
		 */
		if (inode->i_nlink)
			FUNC7(NULL, inode);
	}

	return ret ? ret : copied;
}