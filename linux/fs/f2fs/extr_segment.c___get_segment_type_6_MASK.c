#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_write_hint; } ;
struct f2fs_io_info {scalar_t__ type; TYPE_2__* page; } ;
struct TYPE_6__ {TYPE_1__* mapping; } ;
struct TYPE_5__ {struct inode* host; } ;

/* Variables and functions */
 int CURSEG_COLD_DATA ; 
 int CURSEG_COLD_NODE ; 
 int CURSEG_HOT_DATA ; 
 int CURSEG_HOT_NODE ; 
 int CURSEG_WARM_NODE ; 
 scalar_t__ DATA ; 
 int /*<<< orphan*/  FI_HOT_DATA ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct f2fs_io_info *fio)
{
	if (fio->type == DATA) {
		struct inode *inode = fio->page->mapping->host;

		if (FUNC6(fio->page) || FUNC4(inode))
			return CURSEG_COLD_DATA;
		if (FUNC5(inode) ||
				FUNC8(inode, FI_HOT_DATA) ||
				FUNC1(inode) ||
				FUNC2(inode))
			return CURSEG_HOT_DATA;
		return FUNC3(inode->i_write_hint);
	} else {
		if (FUNC0(fio->page))
			return FUNC7(fio->page) ? CURSEG_WARM_NODE :
						CURSEG_HOT_NODE;
		return CURSEG_COLD_NODE;
	}
}