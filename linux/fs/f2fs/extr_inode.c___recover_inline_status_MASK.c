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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FI_DATA_EXIST ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC3 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, struct page *ipage)
{
	void *inline_data = FUNC3(inode, ipage);
	__le32 *start = inline_data;
	__le32 *end = start + FUNC1(inode) / sizeof(__le32);

	while (start < end) {
		if (*start++) {
			FUNC2(ipage, NODE, true, true);

			FUNC4(inode, FI_DATA_EXIST);
			FUNC6(inode, FUNC0(ipage));
			FUNC5(ipage);
			return;
		}
	}
	return;
}