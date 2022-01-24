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
struct ubifs_info {int /*<<< orphan*/  orph_buf; int /*<<< orphan*/  leb_size; int /*<<< orphan*/  max_orphans; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct ubifs_info *c, int unclean, int read_only)
{
	int err = 0;

	c->max_orphans = FUNC1(c);

	if (!read_only) {
		c->orph_buf = FUNC3(c->leb_size);
		if (!c->orph_buf)
			return -ENOMEM;
	}

	if (unclean)
		err = FUNC0(c);
	else if (!read_only)
		err = FUNC2(c);

	return err;
}