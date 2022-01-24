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
struct list_head {int /*<<< orphan*/  next; } ;
struct address_space {int /*<<< orphan*/  private_lock; struct address_space* private_data; struct list_head private_list; } ;
struct inode {struct address_space i_data; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct inode *inode)
{
	int ret = 1;

	if (FUNC3(inode)) {
		struct address_space *mapping = &inode->i_data;
		struct list_head *list = &mapping->private_list;
		struct address_space *buffer_mapping = mapping->private_data;

		FUNC5(&buffer_mapping->private_lock);
		while (!FUNC4(list)) {
			struct buffer_head *bh = FUNC0(list->next);
			if (FUNC2(bh)) {
				ret = 0;
				break;
			}
			FUNC1(bh);
		}
		FUNC6(&buffer_mapping->private_lock);
	}
	return ret;
}