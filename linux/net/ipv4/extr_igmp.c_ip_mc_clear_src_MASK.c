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
struct ip_sf_list {int dummy; } ;
struct ip_mc_list {size_t sfmode; int* sfcount; int /*<<< orphan*/  lock; struct ip_sf_list* sources; struct ip_sf_list* tomb; } ;

/* Variables and functions */
 size_t MCAST_EXCLUDE ; 
 size_t MCAST_INCLUDE ; 
 int /*<<< orphan*/  FUNC0 (struct ip_sf_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ip_mc_list *pmc)
{
	struct ip_sf_list *tomb, *sources;

	FUNC1(&pmc->lock);
	tomb = pmc->tomb;
	pmc->tomb = NULL;
	sources = pmc->sources;
	pmc->sources = NULL;
	pmc->sfmode = MCAST_EXCLUDE;
	pmc->sfcount[MCAST_INCLUDE] = 0;
	pmc->sfcount[MCAST_EXCLUDE] = 1;
	FUNC2(&pmc->lock);

	FUNC0(tomb);
	FUNC0(sources);
}