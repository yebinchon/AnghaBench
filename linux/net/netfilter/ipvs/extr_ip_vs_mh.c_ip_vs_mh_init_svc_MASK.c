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
struct ip_vs_mh_state {int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  gcd; int /*<<< orphan*/  rshift; int /*<<< orphan*/  hash2; int /*<<< orphan*/  hash1; int /*<<< orphan*/  lookup; } ;
struct ip_vs_mh_lookup {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int IP_VS_MH_TAB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_service*) ; 
 int FUNC3 (struct ip_vs_mh_state*,struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_mh_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_service*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_vs_mh_state*) ; 
 struct ip_vs_mh_state* FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ip_vs_service *svc)
{
	int ret;
	struct ip_vs_mh_state *s;

	/* Allocate the MH table for this service */
	s = FUNC9(sizeof(*s), GFP_KERNEL);
	if (!s)
		return -ENOMEM;

	s->lookup = FUNC7(IP_VS_MH_TAB_SIZE, sizeof(struct ip_vs_mh_lookup),
			    GFP_KERNEL);
	if (!s->lookup) {
		FUNC8(s);
		return -ENOMEM;
	}

	FUNC1(&s->hash1, &s->hash2);
	s->gcd = FUNC2(svc);
	s->rshift = FUNC5(svc, s->gcd);

	FUNC0(6,
		  "MH lookup table (memory=%zdbytes) allocated for current service\n",
		  sizeof(struct ip_vs_mh_lookup) * IP_VS_MH_TAB_SIZE);

	/* Assign the lookup table with current dests */
	ret = FUNC3(s, svc);
	if (ret < 0) {
		FUNC4(s);
		FUNC6(&s->rcu_head);
		return ret;
	}

	/* No more failures, attach state */
	svc->sched_data = s;
	return 0;
}