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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ubifs_info*,union ubifs_key*,int,int,int) ; 
 int FUNC2 (struct ubifs_info*,union ubifs_key*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ubifs_info *c, union ubifs_key *key, int level,
		       int lnum, int offs, int is_idx)
{
	int err;

	FUNC3(&c->tnc_mutex);
	if (is_idx) {
		err = FUNC1(c, key, level, lnum, offs);
		if (err < 0)
			goto out_unlock;
		if (err == 1)
			/* The index node was found but it was dirty */
			err = 0;
		else if (err == 2)
			/* The index node was found and it was clean */
			err = 1;
		else
			FUNC0(err != 0);
	} else
		err = FUNC2(c, key, lnum, offs);

out_unlock:
	FUNC4(&c->tnc_mutex);
	return err;
}