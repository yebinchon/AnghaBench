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
struct TYPE_2__ {int /*<<< orphan*/  sqnum; } ;
struct ubifs_mst_node {TYPE_1__ ch; int /*<<< orphan*/  flags; } ;
struct ubifs_info {int mst_node_alsz; int leb_size; struct ubifs_mst_node* mst_node; scalar_t__ max_sqnum; struct ubifs_mst_node* rcvrd_mst_node; scalar_t__ ro_mount; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UBIFS_MST_DIRTY ; 
 scalar_t__ UBIFS_MST_LNUM ; 
 int /*<<< orphan*/  UBIFS_MST_NODE_SZ ; 
 int UBIFS_MST_RCVRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct ubifs_info*,scalar_t__,void**,struct ubifs_mst_node**,void**) ; 
 struct ubifs_mst_node* FUNC3 (int const,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_mst_node*,struct ubifs_mst_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ubifs_info*,struct ubifs_mst_node*,struct ubifs_mst_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,struct ubifs_mst_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int FUNC12 (struct ubifs_info*,struct ubifs_mst_node*) ; 

int FUNC13(struct ubifs_info *c)
{
	void *buf1 = NULL, *buf2 = NULL, *cor1 = NULL, *cor2 = NULL;
	struct ubifs_mst_node *mst1 = NULL, *mst2 = NULL, *mst;
	const int sz = c->mst_node_alsz;
	int err, offs1, offs2;

	FUNC1("recovery");

	err = FUNC2(c, UBIFS_MST_LNUM, &buf1, &mst1, &cor1);
	if (err)
		goto out_free;

	err = FUNC2(c, UBIFS_MST_LNUM + 1, &buf2, &mst2, &cor2);
	if (err)
		goto out_free;

	if (mst1) {
		offs1 = (void *)mst1 - buf1;
		if ((FUNC4(mst1->flags) & UBIFS_MST_RCVRY) &&
		    (offs1 == 0 && !cor1)) {
			/*
			 * mst1 was written by recovery at offset 0 with no
			 * corruption.
			 */
			FUNC1("recovery recovery");
			mst = mst1;
		} else if (mst2) {
			offs2 = (void *)mst2 - buf2;
			if (offs1 == offs2) {
				/* Same offset, so must be the same */
				if (FUNC7(c, mst1, mst2))
					goto out_err;
				mst = mst1;
			} else if (offs2 + sz == offs1) {
				/* 1st LEB was written, 2nd was not */
				if (cor1)
					goto out_err;
				mst = mst1;
			} else if (offs1 == 0 &&
				   c->leb_size - offs2 - sz < sz) {
				/* 1st LEB was unmapped and written, 2nd not */
				if (cor1)
					goto out_err;
				mst = mst1;
			} else
				goto out_err;
		} else {
			/*
			 * 2nd LEB was unmapped and about to be written, so
			 * there must be only one master node in the first LEB
			 * and no corruption.
			 */
			if (offs1 != 0 || cor1)
				goto out_err;
			mst = mst1;
		}
	} else {
		if (!mst2)
			goto out_err;
		/*
		 * 1st LEB was unmapped and about to be written, so there must
		 * be no room left in 2nd LEB.
		 */
		offs2 = (void *)mst2 - buf2;
		if (offs2 + sz + sz <= c->leb_size)
			goto out_err;
		mst = mst2;
	}

	FUNC10(c, "recovered master node from LEB %d",
		  (mst == mst1 ? UBIFS_MST_LNUM : UBIFS_MST_LNUM + 1));

	FUNC6(c->mst_node, mst, UBIFS_MST_NODE_SZ);

	if (c->ro_mount) {
		/* Read-only mode. Keep a copy for switching to rw mode */
		c->rcvrd_mst_node = FUNC3(sz, GFP_KERNEL);
		if (!c->rcvrd_mst_node) {
			err = -ENOMEM;
			goto out_free;
		}
		FUNC6(c->rcvrd_mst_node, c->mst_node, UBIFS_MST_NODE_SZ);

		/*
		 * We had to recover the master node, which means there was an
		 * unclean reboot. However, it is possible that the master node
		 * is clean at this point, i.e., %UBIFS_MST_DIRTY is not set.
		 * E.g., consider the following chain of events:
		 *
		 * 1. UBIFS was cleanly unmounted, so the master node is clean
		 * 2. UBIFS is being mounted R/W and starts changing the master
		 *    node in the first (%UBIFS_MST_LNUM). A power cut happens,
		 *    so this LEB ends up with some amount of garbage at the
		 *    end.
		 * 3. UBIFS is being mounted R/O. We reach this place and
		 *    recover the master node from the second LEB
		 *    (%UBIFS_MST_LNUM + 1). But we cannot update the media
		 *    because we are being mounted R/O. We have to defer the
		 *    operation.
		 * 4. However, this master node (@c->mst_node) is marked as
		 *    clean (since the step 1). And if we just return, the
		 *    mount code will be confused and won't recover the master
		 *    node when it is re-mounter R/W later.
		 *
		 *    Thus, to force the recovery by marking the master node as
		 *    dirty.
		 */
		c->mst_node->flags |= FUNC0(UBIFS_MST_DIRTY);
	} else {
		/* Write the recovered master node */
		c->max_sqnum = FUNC5(mst->ch.sqnum) - 1;
		err = FUNC12(c, c->mst_node);
		if (err)
			goto out_free;
	}

	FUNC11(buf2);
	FUNC11(buf1);

	return 0;

out_err:
	err = -EINVAL;
out_free:
	FUNC9(c, "failed to recover master node");
	if (mst1) {
		FUNC9(c, "dumping first master node");
		FUNC8(c, mst1);
	}
	if (mst2) {
		FUNC9(c, "dumping second master node");
		FUNC8(c, mst2);
	}
	FUNC11(buf2);
	FUNC11(buf1);
	return err;
}