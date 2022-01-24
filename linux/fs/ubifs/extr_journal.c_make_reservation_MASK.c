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
struct ubifs_info {int /*<<< orphan*/  commit_sem; int /*<<< orphan*/  bi; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSPC ; 
 int FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct ubifs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,char*,...) ; 
 int FUNC9 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ubifs_info *c, int jhead, int len)
{
	int err, cmt_retries = 0, nospc_retries = 0;

again:
	FUNC2(&c->commit_sem);
	err = FUNC5(c, jhead, len);
	if (!err)
		/* c->commit_sem will get released via finish_reservation(). */
		return 0;
	FUNC11(&c->commit_sem);

	if (err == -ENOSPC) {
		/*
		 * GC could not make any progress. We should try to commit
		 * once because it could make some dirty space and GC would
		 * make progress, so make the error -EAGAIN so that the below
		 * will commit and re-try.
		 */
		if (nospc_retries++ < 2) {
			FUNC1("no space, retry");
			err = -EAGAIN;
		}

		/*
		 * This means that the budgeting is incorrect. We always have
		 * to be able to write to the media, because all operations are
		 * budgeted. Deletions are not budgeted, though, but we reserve
		 * an extra LEB for them.
		 */
	}

	if (err != -EAGAIN)
		goto out;

	/*
	 * -EAGAIN means that the journal is full or too large, or the above
	 * code wants to do one commit. Do this and re-try.
	 */
	if (cmt_retries > 128) {
		/*
		 * This should not happen unless the journal size limitations
		 * are too tough.
		 */
		FUNC8(c, "stuck in space allocation");
		err = -ENOSPC;
		goto out;
	} else if (cmt_retries > 32)
		FUNC10(c, "too many space allocation re-tries (%d)",
			   cmt_retries);

	FUNC1("-EAGAIN, commit and retry (retried %d times)",
		cmt_retries);
	cmt_retries += 1;

	err = FUNC9(c);
	if (err)
		return err;
	goto again;

out:
	FUNC8(c, "cannot reserve %d bytes in jhead %d, error %d",
		  len, jhead, err);
	if (err == -ENOSPC) {
		/* This are some budgeting problems, print useful information */
		FUNC3(&c->commit_sem);
		FUNC4();
		FUNC6(c, &c->bi);
		FUNC7(c);
		cmt_retries = FUNC0(c);
		FUNC12(&c->commit_sem);
	}
	return err;
}