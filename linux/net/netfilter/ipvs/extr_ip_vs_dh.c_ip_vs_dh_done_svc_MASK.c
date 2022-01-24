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
struct ip_vs_service {struct ip_vs_dh_state* sched_data; } ;
struct ip_vs_dh_state {int dummy; } ;
struct ip_vs_dh_bucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int IP_VS_DH_TAB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_dh_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_dh_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static void FUNC3(struct ip_vs_service *svc)
{
	struct ip_vs_dh_state *s = svc->sched_data;

	/* got to clean up hash buckets here */
	FUNC1(s);

	/* release the table itself */
	FUNC2(s, rcu_head);
	FUNC0(6, "DH hash table (memory=%zdbytes) released\n",
		  sizeof(struct ip_vs_dh_bucket)*IP_VS_DH_TAB_SIZE);
}