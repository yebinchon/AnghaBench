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
struct ubifs_info {int gc_lnum; int /*<<< orphan*/  leb_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LPROPS_TAKEN ; 
 int FUNC0 (struct ubifs_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,char*) ; 

__attribute__((used)) static int FUNC2(struct ubifs_info *c)
{
	int err;

	if (c->gc_lnum == -1) {
		FUNC1(c, "no LEB for GC");
		return -EINVAL;
	}

	/* And we have to tell lprops that this LEB is taken */
	err = FUNC0(c, c->gc_lnum, c->leb_size, 0,
				  LPROPS_TAKEN, 0, 0);
	return err;
}