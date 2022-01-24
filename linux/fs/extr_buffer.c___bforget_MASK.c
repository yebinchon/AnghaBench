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
struct buffer_head {int /*<<< orphan*/ * b_assoc_map; int /*<<< orphan*/  b_assoc_buffers; TYPE_1__* b_page; } ;
struct address_space {int /*<<< orphan*/  private_lock; } ;
struct TYPE_2__ {struct address_space* mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct buffer_head *bh)
{
	FUNC1(bh);
	if (bh->b_assoc_map) {
		struct address_space *buffer_mapping = bh->b_page->mapping;

		FUNC3(&buffer_mapping->private_lock);
		FUNC2(&bh->b_assoc_buffers);
		bh->b_assoc_map = NULL;
		FUNC4(&buffer_mapping->private_lock);
	}
	FUNC0(bh);
}