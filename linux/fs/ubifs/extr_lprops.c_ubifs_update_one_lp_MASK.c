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
struct ubifs_lprops {int flags; scalar_t__ dirty; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_lprops const*) ; 
 int FUNC1 (struct ubifs_lprops const*) ; 
 struct ubifs_lprops* FUNC2 (struct ubifs_info*,struct ubifs_lprops const*,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 struct ubifs_lprops* FUNC5 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*) ; 

int FUNC7(struct ubifs_info *c, int lnum, int free, int dirty,
			int flags_set, int flags_clean)
{
	int err = 0, flags;
	const struct ubifs_lprops *lp;

	FUNC4(c);

	lp = FUNC5(c, lnum);
	if (FUNC0(lp)) {
		err = FUNC1(lp);
		goto out;
	}

	flags = (lp->flags | flags_set) & ~flags_clean;
	lp = FUNC2(c, lp, free, lp->dirty + dirty, flags, 0);
	if (FUNC0(lp))
		err = FUNC1(lp);

out:
	FUNC6(c);
	if (err)
		FUNC3(c, "cannot update properties of LEB %d, error %d",
			  lnum, err);
	return err;
}