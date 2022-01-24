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
struct netns_ipvs {int /*<<< orphan*/  dest_trash_lock; int /*<<< orphan*/  dest_trash; int /*<<< orphan*/  dest_trash_timer; } ;
struct ip_vs_dest {scalar_t__ idle_start; int /*<<< orphan*/  t_list; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; int /*<<< orphan*/  af; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_VS_DEST_TRASH_PERIOD ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC3 (struct netns_ipvs*,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct netns_ipvs *ipvs, struct ip_vs_dest *dest,
			     bool cleanup)
{
	FUNC3(ipvs, &dest->stats);

	/*
	 *  Remove it from the d-linked list with the real services.
	 */
	FUNC2(dest);

	FUNC9(&ipvs->dest_trash_lock);
	FUNC1(3, "Moving dest %s:%u into trash, dest->refcnt=%d\n",
		      FUNC0(dest->af, &dest->addr), FUNC7(dest->port),
		      FUNC8(&dest->refcnt));
	if (FUNC5(&ipvs->dest_trash) && !cleanup)
		FUNC6(&ipvs->dest_trash_timer,
			  jiffies + (IP_VS_DEST_TRASH_PERIOD >> 1));
	/* dest lives in trash with reference */
	FUNC4(&dest->t_list, &ipvs->dest_trash);
	dest->idle_start = 0;
	FUNC10(&ipvs->dest_trash_lock);
}