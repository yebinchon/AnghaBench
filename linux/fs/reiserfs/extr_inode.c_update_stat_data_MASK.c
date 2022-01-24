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
struct treepath {int dummy; } ;
struct item_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct buffer_head* FUNC1 (struct treepath*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,struct item_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,struct item_head*) ; 
 scalar_t__ FUNC7 (struct item_head*) ; 
 struct item_head* FUNC8 (struct treepath*) ; 

__attribute__((used)) static void FUNC9(struct treepath *path, struct inode *inode,
			     loff_t size)
{
	struct buffer_head *bh;
	struct item_head *ih;

	bh = FUNC1(path);
	ih = FUNC8(path);

	if (!FUNC5(ih))
		FUNC6(inode->i_sb, "vs-13065", "key %k, found item %h",
			       FUNC0(inode), ih);

	/* path points to old stat data */
	if (FUNC7(ih)) {
		FUNC4(FUNC2(bh, ih), inode, size);
	} else {
		FUNC3(FUNC2(bh, ih), inode, size);
	}

	return;
}