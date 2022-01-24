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
struct ip_vs_service {struct ip_vs_mh_state* sched_data; } ;
struct ip_vs_mh_state {int /*<<< orphan*/  rcu_head; } ;
struct ip_vs_mh_lookup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int IP_VS_MH_TAB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_mh_state*) ; 
 int /*<<< orphan*/  ip_vs_mh_state_free ; 

__attribute__((used)) static void FUNC3(struct ip_vs_service *svc)
{
	struct ip_vs_mh_state *s = svc->sched_data;

	/* Got to clean up lookup entry here */
	FUNC2(s);

	FUNC1(&s->rcu_head, ip_vs_mh_state_free);
	FUNC0(6, "MH lookup table (memory=%zdbytes) released\n",
		  sizeof(struct ip_vs_mh_lookup) * IP_VS_MH_TAB_SIZE);
}