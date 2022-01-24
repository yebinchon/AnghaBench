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
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct page*) ; 
 TYPE_1__* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct page *page)
{
	struct inode *inode = FUNC10(page)->host;

	FUNC11(page, DATA);

	if (!FUNC3(page))
		FUNC4(page);
	if (FUNC2(page))
		return FUNC5(page);

	if (FUNC6(inode) && !FUNC7(inode)) {
		if (!FUNC0(page)) {
			FUNC8(inode, page);
			return 1;
		}
		/*
		 * Previously, this page has been registered, we just
		 * return here.
		 */
		return 0;
	}

	if (!FUNC1(page)) {
		FUNC5(page);
		FUNC9(inode, page);
		return 1;
	}
	return 0;
}