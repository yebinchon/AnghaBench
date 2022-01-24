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
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FI_INC_LINK ; 
 int /*<<< orphan*/  FI_NEW_INODE ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct page* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int FUNC9 (struct inode*,struct inode*,struct page*,struct page*) ; 
 int FUNC10 (struct inode*,struct inode*,struct qstr const*,struct page*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 struct page* FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int FUNC18 (struct inode*,struct inode*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct qstr const*,struct page*) ; 
 scalar_t__ FUNC21 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int FUNC23 (struct inode*,struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 

struct page *FUNC25(struct inode *inode, struct inode *dir,
			const struct qstr *new_name, const struct qstr *orig_name,
			struct page *dpage)
{
	struct page *page;
	int dummy_encrypt = FUNC0(FUNC2(dir));
	int err;

	if (FUNC21(inode, FI_NEW_INODE)) {
		page = FUNC12(inode);
		if (FUNC4(page))
			return page;

		if (FUNC5(inode->i_mode)) {
			/* in order to handle error case */
			FUNC19(page);
			err = FUNC23(inode, dir, page);
			if (err) {
				FUNC22(page);
				goto put_error;
			}
			FUNC24(page);
		}

		err = FUNC9(inode, dir, page, dpage);
		if (err)
			goto put_error;

		err = FUNC10(inode, dir, orig_name, page);
		if (err)
			goto put_error;

		if ((FUNC3(dir) || dummy_encrypt) &&
					FUNC11(inode)) {
			err = FUNC18(dir, inode, page, false);
			if (err)
				goto put_error;
		}
	} else {
		page = FUNC7(FUNC2(dir), inode->i_ino);
		if (FUNC4(page))
			return page;
	}

	if (new_name) {
		FUNC20(new_name, page);
		if (FUNC3(dir))
			FUNC17(inode);
	}

	/*
	 * This file should be checkpointed during fsync.
	 * We lost i_pino from now on.
	 */
	if (FUNC21(inode, FI_INC_LINK)) {
		if (!FUNC5(inode->i_mode))
			FUNC16(inode);
		/*
		 * If link the tmpfile to alias through linkat path,
		 * we should remove this inode from orphan list.
		 */
		if (inode->i_nlink == 0)
			FUNC14(FUNC2(dir), inode->i_ino);
		FUNC8(inode, true);
	}
	return page;

put_error:
	FUNC6(inode);
	FUNC15(inode, page);
	FUNC13(page, 1);
	return FUNC1(err);
}