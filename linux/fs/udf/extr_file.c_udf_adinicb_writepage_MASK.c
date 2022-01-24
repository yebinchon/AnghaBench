#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct TYPE_4__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_lenEAttr; TYPE_2__ i_ext; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct udf_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 char* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct page *page,
				 struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	char *kaddr;
	struct udf_inode_info *iinfo = FUNC3(inode);

	FUNC0(!FUNC1(page));

	kaddr = FUNC5(page);
	FUNC8(iinfo->i_ext.i_data + iinfo->i_lenEAttr, kaddr,
		FUNC4(inode));
	FUNC2(page);
	FUNC6(kaddr);
	FUNC7(inode);
	FUNC9(page);

	return 0;
}