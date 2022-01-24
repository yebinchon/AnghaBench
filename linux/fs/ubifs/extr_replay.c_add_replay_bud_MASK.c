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
struct ubifs_info {int /*<<< orphan*/  replay_buds; int /*<<< orphan*/  log_hash; } ;
struct ubifs_bud {int lnum; int start; int jhead; unsigned long long sqnum; int /*<<< orphan*/  list; struct ubifs_bud* bud; int /*<<< orphan*/  log_hash; } ;
struct bud_entry {int lnum; int start; int jhead; unsigned long long sqnum; int /*<<< orphan*/  list; struct bud_entry* bud; int /*<<< orphan*/  log_hash; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_bud*) ; 
 struct ubifs_bud* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,struct ubifs_bud*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ubifs_info *c, int lnum, int offs, int jhead,
			  unsigned long long sqnum)
{
	struct ubifs_bud *bud;
	struct bud_entry *b;
	int err;

	FUNC2("add replay bud LEB %d:%d, head %d", lnum, offs, jhead);

	bud = FUNC4(sizeof(struct ubifs_bud), GFP_KERNEL);
	if (!bud)
		return -ENOMEM;

	b = FUNC4(sizeof(struct bud_entry), GFP_KERNEL);
	if (!b) {
		err = -ENOMEM;
		goto out;
	}

	bud->lnum = lnum;
	bud->start = offs;
	bud->jhead = jhead;
	bud->log_hash = FUNC7(c);
	if (FUNC0(bud->log_hash)) {
		err = FUNC1(bud->log_hash);
		goto out;
	}

	FUNC8(c, c->log_hash, bud->log_hash);

	FUNC6(c, bud);

	b->bud = bud;
	b->sqnum = sqnum;
	FUNC5(&b->list, &c->replay_buds);

	return 0;
out:
	FUNC3(bud);
	FUNC3(b);

	return err;
}