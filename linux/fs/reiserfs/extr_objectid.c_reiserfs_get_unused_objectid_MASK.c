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
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; struct super_block* t_super; } ;
struct reiserfs_super_block {int dummy; } ;
typedef  scalar_t__ __u32 ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct reiserfs_super_block* FUNC2 (struct super_block*) ; 
 scalar_t__ U32_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__* FUNC8 (struct super_block*,struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,char*,char*) ; 
 int FUNC12 (struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC13 (struct reiserfs_super_block*,int) ; 

__u32 FUNC14(struct reiserfs_transaction_handle *th)
{
	struct super_block *s = th->t_super;
	struct reiserfs_super_block *rs = FUNC2(s);
	__le32 *map = FUNC8(s, rs);
	__u32 unused_objectid;

	FUNC0(!th->t_trans_id);

	FUNC3(s, map);

	FUNC9(s, FUNC1(s), 1);
	/* comment needed -Hans */
	unused_objectid = FUNC6(map[1]);
	if (unused_objectid == U32_MAX) {
		FUNC11(s, "reiserfs-15100", "no more object ids");
		FUNC10(s, FUNC1(s));
		return 0;
	}

	/*
	 * This incrementation allocates the first unused objectid. That
	 * is to say, the first entry on the objectid map is the first
	 * unused objectid, and by incrementing it we use it.  See below
	 * where we check to see if we eliminated a sequence of unused
	 * objectids....
	 */
	map[1] = FUNC4(unused_objectid + 1);

	/*
	 * Now we check to see if we eliminated the last remaining member of
	 * the first even sequence (and can eliminate the sequence by
	 * eliminating its last objectid from oids), and can collapse the
	 * first two odd sequences into one sequence.  If so, then the net
	 * result is to eliminate a pair of objectids from oids.  We do this
	 * by shifting the entire map to the left.
	 */
	if (FUNC12(rs) > 2 && map[1] == map[2]) {
		FUNC7(map + 1, map + 3,
			(FUNC12(rs) - 3) * sizeof(__u32));
		FUNC13(rs, FUNC12(rs) - 2);
	}

	FUNC5(th, FUNC1(s));
	return unused_objectid;
}