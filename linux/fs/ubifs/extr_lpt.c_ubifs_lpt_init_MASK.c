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
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ubifs_info*) ; 
 int FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int) ; 

int FUNC3(struct ubifs_info *c, int rd, int wr)
{
	int err;

	if (rd) {
		err = FUNC0(c);
		if (err)
			goto out_err;
	}

	if (wr) {
		err = FUNC1(c);
		if (err)
			goto out_err;
	}

	return 0;

out_err:
	if (wr)
		FUNC2(c, 1);
	if (rd)
		FUNC2(c, 0);
	return err;
}