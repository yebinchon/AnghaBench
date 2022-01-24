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
struct inode {int /*<<< orphan*/  i_io_list; } ;
struct bdi_writeback {int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bdi_writeback*) ; 

__attribute__((used)) static void FUNC3(struct inode *inode,
				     struct bdi_writeback *wb)
{
	FUNC0(&wb->list_lock);

	FUNC1(&inode->i_io_list);
	FUNC2(wb);
}