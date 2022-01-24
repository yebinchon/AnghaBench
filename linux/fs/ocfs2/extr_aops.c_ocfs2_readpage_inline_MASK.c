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
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct inode*,struct page*,struct buffer_head*) ; 
 int FUNC6 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct page *page)
{
	int ret;
	struct buffer_head *di_bh = NULL;

	FUNC0(!FUNC2(page));
	FUNC0(!(FUNC1(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL));

	ret = FUNC6(inode, &di_bh);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	ret = FUNC5(inode, page, di_bh);
out:
	FUNC7(page);

	FUNC3(di_bh);
	return ret;
}