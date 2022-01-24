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
struct tree_balance {int /*<<< orphan*/ ** CFR; int /*<<< orphan*/ * rkey; int /*<<< orphan*/ ** R; } ;
struct item_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_balance*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct item_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tree_balance *tb, int h, struct item_head *key)
{
	FUNC1(tb->R[h] == NULL || tb->CFR[h] == NULL,
	       "R[h](%p) and CFR[h](%p) must exist in replace_rkey",
	       *tb->R[h], tb->CFR[h]);
	FUNC1(FUNC0(tb->R[h]) == 0,
	       "R[h] can not be empty if it exists (item number=%d)",
	       FUNC0(tb->R[h]));

	FUNC4(FUNC3(tb->CFR[h], tb->rkey[h]), key, KEY_SIZE);

	FUNC2(tb, tb->CFR[h], 0);
}