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
struct smack_known {int /*<<< orphan*/  list; int /*<<< orphan*/  smk_hashed; int /*<<< orphan*/  smk_known; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int SMACK_HASH_SLOTS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hlist_head* smack_known_hash ; 
 int /*<<< orphan*/  smack_known_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct smack_known *skp)
{
	unsigned int hash;
	struct hlist_head *head;

	hash = FUNC0(NULL, skp->smk_known, FUNC3(skp->smk_known));
	head = &smack_known_hash[hash & (SMACK_HASH_SLOTS - 1)];

	FUNC1(&skp->smk_hashed, head);
	FUNC2(&skp->list, &smack_known_list);
}