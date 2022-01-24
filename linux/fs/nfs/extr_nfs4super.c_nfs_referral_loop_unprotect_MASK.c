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
struct nfs_referral_count {scalar_t__ referral_count; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_referral_count*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfs_referral_count* FUNC2 () ; 
 int /*<<< orphan*/  nfs_referral_count_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct nfs_referral_count *p;

	FUNC3(&nfs_referral_count_list_lock);
	p = FUNC2();
	p->referral_count--;
	if (p->referral_count == 0)
		FUNC1(&p->list);
	else
		p = NULL;
	FUNC4(&nfs_referral_count_list_lock);
	FUNC0(p);
}