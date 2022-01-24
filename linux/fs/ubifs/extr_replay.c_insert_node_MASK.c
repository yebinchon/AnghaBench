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
typedef  union ubifs_key {int dummy; } ubifs_key ;
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_info {scalar_t__ highest_inum; int /*<<< orphan*/  replay_list; } ;
struct replay_entry {int lnum; int offs; int len; int deletion; unsigned long long sqnum; int /*<<< orphan*/  list; void* new_size; void* old_size; int /*<<< orphan*/  key; int /*<<< orphan*/  hash; } ;
typedef  void* loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (union ubifs_key*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ubifs_info*,union ubifs_key*) ; 
 struct replay_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c, int lnum, int offs, int len,
		       const u8 *hash, union ubifs_key *key,
		       unsigned long long sqnum, int deletion, int *used,
		       loff_t old_size, loff_t new_size)
{
	struct replay_entry *r;

	FUNC1(key, "add LEB %d:%d, key ", lnum, offs);

	if (FUNC3(c, key) >= c->highest_inum)
		c->highest_inum = FUNC3(c, key);

	r = FUNC4(sizeof(struct replay_entry), GFP_KERNEL);
	if (!r)
		return -ENOMEM;

	if (!deletion)
		*used += FUNC0(len, 8);
	r->lnum = lnum;
	r->offs = offs;
	r->len = len;
	FUNC6(c, hash, r->hash);
	r->deletion = !!deletion;
	r->sqnum = sqnum;
	FUNC2(c, key, &r->key);
	r->old_size = old_size;
	r->new_size = new_size;

	FUNC5(&r->list, &c->replay_list);
	return 0;
}