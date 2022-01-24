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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int IP_VS_DH_TAB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_dh_state*,struct ip_vs_service*) ; 
 struct ip_vs_dh_state* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ip_vs_service *svc)
{
	struct ip_vs_dh_state *s;

	/* allocate the DH table for this service */
	s = FUNC2(sizeof(struct ip_vs_dh_state), GFP_KERNEL);
	if (s == NULL)
		return -ENOMEM;

	svc->sched_data = s;
	FUNC0(6, "DH hash table (memory=%zdbytes) allocated for "
		  "current service\n",
		  sizeof(struct ip_vs_dh_bucket)*IP_VS_DH_TAB_SIZE);

	/* assign the hash buckets with current dests */
	FUNC1(s, svc);

	return 0;
}