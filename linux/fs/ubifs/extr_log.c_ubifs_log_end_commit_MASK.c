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
struct ubifs_info {int ltail_lnum; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  buds_lock; scalar_t__ cmt_bud_bytes; int /*<<< orphan*/  bud_bytes; int /*<<< orphan*/  leb_size; int /*<<< orphan*/  min_log_bytes; } ;

/* Variables and functions */
 int FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ubifs_info*) ; 

int FUNC7(struct ubifs_info *c, int ltail_lnum)
{
	int err;

	/*
	 * At this phase we have to lock 'c->log_mutex' because UBIFS allows FS
	 * writes during commit. Its only short "commit" start phase when
	 * writers are blocked.
	 */
	FUNC2(&c->log_mutex);

	FUNC1("old tail was LEB %d:0, new tail is LEB %d:0",
		c->ltail_lnum, ltail_lnum);

	c->ltail_lnum = ltail_lnum;
	/*
	 * The commit is finished and from now on it must be guaranteed that
	 * there is always enough space for the next commit.
	 */
	c->min_log_bytes = c->leb_size;

	FUNC4(&c->buds_lock);
	c->bud_bytes -= c->cmt_bud_bytes;
	FUNC5(&c->buds_lock);

	err = FUNC0(c);
	if (err)
		goto out;

	err = FUNC6(c);

out:
	FUNC3(&c->log_mutex);
	return err;
}