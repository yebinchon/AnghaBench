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
struct ubifs_info {int /*<<< orphan*/  ubi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info const*,char*,int,int) ; 

int FUNC3(const struct ubifs_info *c, int lnum)
{
	int err;

	err = FUNC1(c->ubi, lnum);
	if (err < 0) {
		FUNC2(c, "ubi_is_mapped failed for LEB %d, error %d",
			  lnum, err);
		FUNC0();
	}
	return err;
}