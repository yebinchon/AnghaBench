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
struct ubifs_scan_leb {int dummy; } ;
struct ubifs_info {int leb_size; int /*<<< orphan*/  min_io_size; TYPE_1__* jheads; } ;
struct ubifs_ch {int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int grouped; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 struct ubifs_scan_leb* FUNC1 (int) ; 
 int EUCLEAN ; 
 int GCHD ; 
 scalar_t__ FUNC2 (struct ubifs_scan_leb*) ; 
 int SCANNED_A_BAD_PAD_NODE ; 
 int SCANNED_A_CORRUPT_NODE ; 
 int SCANNED_A_NODE ; 
 int SCANNED_EMPTY_SPACE ; 
 int SCANNED_GARBAGE ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,void**,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_scan_leb*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_scan_leb*,int*) ; 
 int FUNC9 (void*,int) ; 
 int FUNC10 (struct ubifs_info*,struct ubifs_scan_leb*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,void*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,void*,int,int,int) ; 
 int FUNC15 (int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct ubifs_info*,struct ubifs_scan_leb*,void*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ubifs_info*,struct ubifs_scan_leb*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_info*,char*,int,...) ; 
 int FUNC20 (struct ubifs_info*,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ubifs_scan_leb*) ; 
 int /*<<< orphan*/  FUNC22 (struct ubifs_info*,int,int,void*) ; 
 struct ubifs_scan_leb* FUNC23 (struct ubifs_info*,int,int,void*) ; 

struct ubifs_scan_leb *FUNC24(struct ubifs_info *c, int lnum,
					 int offs, void *sbuf, int jhead)
{
	int ret = 0, err, len = c->leb_size - offs, start = offs, min_io_unit;
	int grouped = jhead == -1 ? 0 : c->jheads[jhead].grouped;
	struct ubifs_scan_leb *sleb;
	void *buf = sbuf + offs;

	FUNC5("%d:%d, jhead %d, grouped %d", lnum, offs, jhead, grouped);

	sleb = FUNC23(c, lnum, offs, sbuf);
	if (FUNC2(sleb))
		return sleb;

	FUNC17(c, len >= 8);
	while (len >= 8) {
		FUNC6("look at LEB %d:%d (%d bytes left)",
			 lnum, offs, len);

		FUNC4();

		/*
		 * Scan quietly until there is an error from which we cannot
		 * recover
		 */
		ret = FUNC20(c, buf, len, lnum, offs, 1);
		if (ret == SCANNED_A_NODE) {
			/* A valid node, and not a padding node */
			struct ubifs_ch *ch = buf;
			int node_len;

			err = FUNC16(c, sleb, buf, offs);
			if (err)
				goto error;
			node_len = FUNC0(FUNC13(ch->len), 8);
			offs += node_len;
			buf += node_len;
			len -= node_len;
		} else if (ret > 0) {
			/* Padding bytes or a valid padding node */
			offs += ret;
			buf += ret;
			len -= ret;
		} else if (ret == SCANNED_EMPTY_SPACE ||
			   ret == SCANNED_GARBAGE     ||
			   ret == SCANNED_A_BAD_PAD_NODE ||
			   ret == SCANNED_A_CORRUPT_NODE) {
			FUNC5("found corruption (%d) at %d:%d",
				  ret, lnum, offs);
			break;
		} else {
			FUNC19(c, "unexpected return value %d", ret);
			err = -EINVAL;
			goto error;
		}
	}

	if (ret == SCANNED_GARBAGE || ret == SCANNED_A_BAD_PAD_NODE) {
		if (!FUNC12(c, buf, offs))
			goto corrupted_rescan;
	} else if (ret == SCANNED_A_CORRUPT_NODE) {
		if (!FUNC14(c, buf, len, lnum, offs))
			goto corrupted_rescan;
	} else if (!FUNC11(buf, len)) {
		if (!FUNC12(c, buf, offs)) {
			int corruption = FUNC9(buf, len);

			/*
			 * See header comment for this file for more
			 * explanations about the reasons we have this check.
			 */
			FUNC19(c, "corrupt empty space LEB %d:%d, corruption starts at %d",
				  lnum, offs, corruption);
			/* Make sure we dump interesting non-0xFF data */
			offs += corruption;
			buf += corruption;
			goto corrupted;
		}
	}

	min_io_unit = FUNC15(offs, c->min_io_size);
	if (grouped)
		/*
		 * If nodes are grouped, always drop the incomplete group at
		 * the end.
		 */
		FUNC7(sleb, &offs);

	if (jhead == GCHD) {
		/*
		 * If this LEB belongs to the GC head then while we are in the
		 * middle of the same min. I/O unit keep dropping nodes. So
		 * basically, what we want is to make sure that the last min.
		 * I/O unit where we saw the corruption is dropped completely
		 * with all the uncorrupted nodes which may possibly sit there.
		 *
		 * In other words, let's name the min. I/O unit where the
		 * corruption starts B, and the previous min. I/O unit A. The
		 * below code tries to deal with a situation when half of B
		 * contains valid nodes or the end of a valid node, and the
		 * second half of B contains corrupted data or garbage. This
		 * means that UBIFS had been writing to B just before the power
		 * cut happened. I do not know how realistic is this scenario
		 * that half of the min. I/O unit had been written successfully
		 * and the other half not, but this is possible in our 'failure
		 * mode emulation' infrastructure at least.
		 *
		 * So what is the problem, why we need to drop those nodes? Why
		 * can't we just clean-up the second half of B by putting a
		 * padding node there? We can, and this works fine with one
		 * exception which was reproduced with power cut emulation
		 * testing and happens extremely rarely.
		 *
		 * Imagine the file-system is full, we run GC which starts
		 * moving valid nodes from LEB X to LEB Y (obviously, LEB Y is
		 * the current GC head LEB). The @c->gc_lnum is -1, which means
		 * that GC will retain LEB X and will try to continue. Imagine
		 * that LEB X is currently the dirtiest LEB, and the amount of
		 * used space in LEB Y is exactly the same as amount of free
		 * space in LEB X.
		 *
		 * And a power cut happens when nodes are moved from LEB X to
		 * LEB Y. We are here trying to recover LEB Y which is the GC
		 * head LEB. We find the min. I/O unit B as described above.
		 * Then we clean-up LEB Y by padding min. I/O unit. And later
		 * 'ubifs_rcvry_gc_commit()' function fails, because it cannot
		 * find a dirty LEB which could be GC'd into LEB Y! Even LEB X
		 * does not match because the amount of valid nodes there does
		 * not fit the free space in LEB Y any more! And this is
		 * because of the padding node which we added to LEB Y. The
		 * user-visible effect of this which I once observed and
		 * analysed is that we cannot mount the file-system with
		 * -ENOSPC error.
		 *
		 * So obviously, to make sure that situation does not happen we
		 * should free min. I/O unit B in LEB Y completely and the last
		 * used min. I/O unit in LEB Y should be A. This is basically
		 * what the below code tries to do.
		 */
		while (offs > min_io_unit)
			FUNC8(sleb, &offs);
	}

	buf = sbuf + offs;
	len = c->leb_size - offs;

	FUNC3(c, &buf, lnum, &offs, &len);
	FUNC18(c, sleb, lnum, offs);

	err = FUNC10(c, sleb, start);
	if (err)
		goto error;

	return sleb;

corrupted_rescan:
	/* Re-scan the corrupted data with verbose messages */
	FUNC19(c, "corruption %d", ret);
	FUNC20(c, buf, len, lnum, offs, 0);
corrupted:
	FUNC22(c, lnum, offs, buf);
	err = -EUCLEAN;
error:
	FUNC19(c, "LEB %d scanning failed", lnum);
	FUNC21(sleb);
	return FUNC1(err);
}