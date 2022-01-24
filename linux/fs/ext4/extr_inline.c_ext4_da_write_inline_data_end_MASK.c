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
struct inode {scalar_t__ i_size; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int FUNC0 (struct inode*,scalar_t__,unsigned int,unsigned int,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

int FUNC5(struct inode *inode, loff_t pos,
				  unsigned len, unsigned copied,
				  struct page *page)
{
	int ret;

	ret = FUNC0(inode, pos, len, copied, page);
	if (ret < 0) {
		FUNC4(page);
		FUNC3(page);
		return ret;
	}
	copied = ret;

	/*
	 * No need to use i_size_read() here, the i_size
	 * cannot change under us because we hold i_mutex.
	 *
	 * But it's important to update i_size while still holding page lock:
	 * page writeout could otherwise come in and zero beyond i_size.
	 */
	if (pos+copied > inode->i_size)
		FUNC1(inode, pos+copied);
	FUNC4(page);
	FUNC3(page);

	/*
	 * Don't mark the inode dirty under page lock. First, it unnecessarily
	 * makes the holding time of page lock longer. Second, it forces lock
	 * ordering of page lock and transaction start for journaling
	 * filesystems.
	 */
	FUNC2(inode);

	return copied;
}