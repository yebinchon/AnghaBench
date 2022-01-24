#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; } ;
struct f2fs_io_info {scalar_t__ type; TYPE_2__* page; } ;
struct TYPE_5__ {TYPE_1__* mapping; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int CURSEG_COLD_DATA ; 
 int CURSEG_COLD_NODE ; 
 int CURSEG_HOT_DATA ; 
 int CURSEG_WARM_NODE ; 
 scalar_t__ DATA ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(struct f2fs_io_info *fio)
{
	if (fio->type == DATA) {
		struct inode *inode = fio->page->mapping->host;

		if (FUNC1(inode->i_mode))
			return CURSEG_HOT_DATA;
		else
			return CURSEG_COLD_DATA;
	} else {
		if (FUNC0(fio->page) && FUNC2(fio->page))
			return CURSEG_WARM_NODE;
		else
			return CURSEG_COLD_NODE;
	}
}