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
struct ubifs_lpt_lprops {int dummy; } ;
struct ubifs_info {int lpt_lebs; scalar_t__ leb_size; scalar_t__ lpt_first; TYPE_1__* ltab; int /*<<< orphan*/  lsave; int /*<<< orphan*/  lsave_cnt; scalar_t__ big_lpt; void* lpt_buf; void* ltab_cmt; } ;
struct TYPE_2__ {scalar_t__ free; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ubifs_info*) ; 
 int FUNC3 (struct ubifs_info*,scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c)
{
	int err, i;

	c->ltab_cmt = FUNC4(FUNC0(sizeof(struct ubifs_lpt_lprops),
					 c->lpt_lebs));
	if (!c->ltab_cmt)
		return -ENOMEM;

	c->lpt_buf = FUNC4(c->leb_size);
	if (!c->lpt_buf)
		return -ENOMEM;

	if (c->big_lpt) {
		c->lsave = FUNC1(c->lsave_cnt, sizeof(int), GFP_NOFS);
		if (!c->lsave)
			return -ENOMEM;
		err = FUNC2(c);
		if (err)
			return err;
	}

	for (i = 0; i < c->lpt_lebs; i++)
		if (c->ltab[i].free == c->leb_size) {
			err = FUNC3(c, i + c->lpt_first);
			if (err)
				return err;
		}

	return 0;
}