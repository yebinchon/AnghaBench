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
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; int /*<<< orphan*/  mc_lock; struct ifmcaddr6* mc_tomb; } ;
struct ifmcaddr6 {size_t mca_sfmode; scalar_t__ mca_crcount; int /*<<< orphan*/  mca_lock; scalar_t__* mca_sfcount; struct ifmcaddr6* next; int /*<<< orphan*/  idev; int /*<<< orphan*/  mca_sources; int /*<<< orphan*/  mca_tomb; } ;

/* Variables and functions */
 size_t MCAST_EXCLUDE ; 
 size_t MCAST_INCLUDE ; 
 int MLD2_ALLOW_NEW_SOURCES ; 
 int MLD2_BLOCK_OLD_SOURCES ; 
 int MLD2_CHANGE_TO_EXCLUDE ; 
 int MLD2_CHANGE_TO_INCLUDE ; 
 struct sk_buff* FUNC0 (struct sk_buff*,struct ifmcaddr6*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct inet6_dev *idev)
{
	struct ifmcaddr6 *pmc, *pmc_prev, *pmc_next;
	struct sk_buff *skb = NULL;
	int type, dtype;

	FUNC5(&idev->lock);
	FUNC7(&idev->mc_lock);

	/* deleted MCA's */
	pmc_prev = NULL;
	for (pmc = idev->mc_tomb; pmc; pmc = pmc_next) {
		pmc_next = pmc->next;
		if (pmc->mca_sfmode == MCAST_INCLUDE) {
			type = MLD2_BLOCK_OLD_SOURCES;
			dtype = MLD2_BLOCK_OLD_SOURCES;
			skb = FUNC0(skb, pmc, type, 1, 0, 0);
			skb = FUNC0(skb, pmc, dtype, 1, 1, 0);
		}
		if (pmc->mca_crcount) {
			if (pmc->mca_sfmode == MCAST_EXCLUDE) {
				type = MLD2_CHANGE_TO_INCLUDE;
				skb = FUNC0(skb, pmc, type, 1, 0, 0);
			}
			pmc->mca_crcount--;
			if (pmc->mca_crcount == 0) {
				FUNC3(&pmc->mca_tomb);
				FUNC3(&pmc->mca_sources);
			}
		}
		if (pmc->mca_crcount == 0 && !pmc->mca_tomb &&
		    !pmc->mca_sources) {
			if (pmc_prev)
				pmc_prev->next = pmc_next;
			else
				idev->mc_tomb = pmc_next;
			FUNC1(pmc->idev);
			FUNC2(pmc);
		} else
			pmc_prev = pmc;
	}
	FUNC9(&idev->mc_lock);

	/* change recs */
	for (pmc = idev->mc_list; pmc; pmc = pmc->next) {
		FUNC8(&pmc->mca_lock);
		if (pmc->mca_sfcount[MCAST_EXCLUDE]) {
			type = MLD2_BLOCK_OLD_SOURCES;
			dtype = MLD2_ALLOW_NEW_SOURCES;
		} else {
			type = MLD2_ALLOW_NEW_SOURCES;
			dtype = MLD2_BLOCK_OLD_SOURCES;
		}
		skb = FUNC0(skb, pmc, type, 0, 0, 0);
		skb = FUNC0(skb, pmc, dtype, 0, 1, 0);	/* deleted sources */

		/* filter mode changes */
		if (pmc->mca_crcount) {
			if (pmc->mca_sfmode == MCAST_EXCLUDE)
				type = MLD2_CHANGE_TO_EXCLUDE;
			else
				type = MLD2_CHANGE_TO_INCLUDE;
			skb = FUNC0(skb, pmc, type, 0, 0, 0);
			pmc->mca_crcount--;
		}
		FUNC10(&pmc->mca_lock);
	}
	FUNC6(&idev->lock);
	if (!skb)
		return;
	(void) FUNC4(skb);
}