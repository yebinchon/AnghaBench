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
struct ubifs_info {scalar_t__ need_recovery; } ;
struct replay_entry {int /*<<< orphan*/  new_size; scalar_t__ deletion; int /*<<< orphan*/  key; int /*<<< orphan*/  hash; int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; int /*<<< orphan*/  nm; int /*<<< orphan*/  sqnum; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
#define  UBIFS_INO_KEY 129 
#define  UBIFS_TRUN_KEY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,struct replay_entry*) ; 
 scalar_t__ FUNC2 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubifs_info*,struct replay_entry*) ; 
 int FUNC6 (struct ubifs_info*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct ubifs_info *c, struct replay_entry *r)
{
	int err;

	FUNC0(&r->key, "LEB %d:%d len %d deletion %d sqnum %llu key ",
		 r->lnum, r->offs, r->len, r->deletion, r->sqnum);

	if (FUNC2(c, &r->key)) {
		if (r->deletion)
			err = FUNC11(c, &r->key, &r->nm);
		else
			err = FUNC8(c, &r->key, r->lnum, r->offs,
					       r->len, r->hash, &r->nm);
	} else {
		if (r->deletion)
			switch (FUNC4(c, &r->key)) {
			case UBIFS_INO_KEY:
			{
				ino_t inum = FUNC3(c, &r->key);

				if (FUNC1(c, r)) {
					err = 0;
					break;
				}

				err = FUNC10(c, inum);
				break;
			}
			case UBIFS_TRUN_KEY:
				err = FUNC5(c, r);
				break;
			default:
				err = FUNC9(c, &r->key);
				break;
			}
		else
			err = FUNC7(c, &r->key, r->lnum, r->offs,
					    r->len, r->hash);
		if (err)
			return err;

		if (c->need_recovery)
			err = FUNC6(c, &r->key, r->deletion,
						       r->new_size);
	}

	return err;
}