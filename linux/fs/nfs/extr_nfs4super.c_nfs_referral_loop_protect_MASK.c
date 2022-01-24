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
struct nfs_referral_count {int referral_count; int /*<<< orphan*/  list; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int ELOOP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NFS_MAX_NESTED_REFERRALS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_referral_count*) ; 
 struct nfs_referral_count* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfs_referral_count* FUNC3 () ; 
 int /*<<< orphan*/  nfs_referral_count_list ; 
 int /*<<< orphan*/  nfs_referral_count_list_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct nfs_referral_count *p, *new;
	int ret = -ENOMEM;

	new = FUNC1(sizeof(*new), GFP_KERNEL);
	if (!new)
		goto out;
	new->task = current;
	new->referral_count = 1;

	ret = 0;
	FUNC4(&nfs_referral_count_list_lock);
	p = FUNC3();
	if (p != NULL) {
		if (p->referral_count >= NFS_MAX_NESTED_REFERRALS)
			ret = -ELOOP;
		else
			p->referral_count++;
	} else {
		FUNC2(&new->list, &nfs_referral_count_list);
		new = NULL;
	}
	FUNC5(&nfs_referral_count_list_lock);
	FUNC0(new);
out:
	return ret;
}