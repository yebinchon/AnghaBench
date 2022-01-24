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
 int EROFS ; 
 scalar_t__ FUNC0 (struct ubifs_info*) ; 
 scalar_t__ FUNC1 (struct ubifs_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ubifs_info *c, int lnum)
{
	int err;

	if (FUNC0(c))
		return -EROFS;
	if (FUNC1(c, lnum, 0))
		return -EROFS;
	err = FUNC2(c->ubi, lnum);
	if (err)
		return err;
	if (FUNC1(c, lnum, 0))
		return -EROFS;
	return 0;
}