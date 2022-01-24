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
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_info {int dummy; } ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(const struct ubifs_info *c, struct shash_desc *src,
			     struct shash_desc *target)
{
	u8 *state;
	int err;

	state = FUNC4(FUNC0(src->tfm), GFP_NOFS);
	if (!state)
		return -ENOMEM;

	err = FUNC1(src, state);
	if (err)
		goto out;

	err = FUNC2(target, state);

out:
	FUNC3(state);

	return err;
}