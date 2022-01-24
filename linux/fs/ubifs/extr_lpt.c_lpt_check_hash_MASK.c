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
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_info {TYPE_1__* mst_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash_lpt; } ;

/* Variables and functions */
 int EPERM ; 
 int UBIFS_HASH_ARR_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 scalar_t__ FUNC1 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,char*) ; 
 int FUNC3 (struct ubifs_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ubifs_info *c)
{
	int err;
	u8 hash[UBIFS_HASH_ARR_SZ];

	if (!FUNC0(c))
		return 0;

	err = FUNC3(c, hash);
	if (err)
		return err;

	if (FUNC1(c, c->mst_node->hash_lpt, hash)) {
		err = -EPERM;
		FUNC2(c, "Failed to authenticate LPT");
	} else {
		err = 0;
	}

	return err;
}