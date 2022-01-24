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
struct sk_buff {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {int /*<<< orphan*/  mca_lock; scalar_t__* mca_sfcount; struct ifmcaddr6* next; } ;

/* Variables and functions */
 size_t MCAST_EXCLUDE ; 
 int MLD2_ALLOW_NEW_SOURCES ; 
 int MLD2_CHANGE_TO_EXCLUDE ; 
 struct sk_buff* FUNC0 (struct sk_buff*,struct ifmcaddr6*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct inet6_dev *idev)
{
	struct sk_buff *skb;
	struct ifmcaddr6 *pmc;
	int type;

	if (FUNC1(idev))
		return;

	skb = NULL;
	FUNC3(&idev->lock);
	for (pmc = idev->mc_list; pmc; pmc = pmc->next) {
		FUNC5(&pmc->mca_lock);
		if (pmc->mca_sfcount[MCAST_EXCLUDE])
			type = MLD2_CHANGE_TO_EXCLUDE;
		else
			type = MLD2_ALLOW_NEW_SOURCES;
		skb = FUNC0(skb, pmc, type, 0, 0, 1);
		FUNC6(&pmc->mca_lock);
	}
	FUNC4(&idev->lock);
	if (skb)
		FUNC2(skb);
}