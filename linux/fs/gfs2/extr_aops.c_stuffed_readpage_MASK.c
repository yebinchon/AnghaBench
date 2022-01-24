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
typedef  scalar_t__ u64 ;
struct page {int /*<<< orphan*/  index; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (struct gfs2_inode*,struct buffer_head**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct gfs2_inode *ip, struct page *page)
{
	struct buffer_head *dibh;
	u64 dsize = FUNC5(&ip->i_inode);
	void *kaddr;
	int error;

	/*
	 * Due to the order of unstuffing files and ->fault(), we can be
	 * asked for a zero page in the case of a stuffed file being extended,
	 * so we need to supply one here. It doesn't happen often.
	 */
	if (FUNC10(page->index)) {
		FUNC11(page, 0, PAGE_SIZE);
		FUNC0(page);
		return 0;
	}

	error = FUNC4(ip, &dibh);
	if (error)
		return error;

	kaddr = FUNC6(page);
	if (dsize > FUNC3(ip))
		dsize = FUNC3(ip);
	FUNC8(kaddr, dibh->b_data + sizeof(struct gfs2_dinode), dsize);
	FUNC9(kaddr + dsize, 0, PAGE_SIZE - dsize);
	FUNC7(kaddr);
	FUNC2(page);
	FUNC1(dibh);
	FUNC0(page);

	return 0;
}