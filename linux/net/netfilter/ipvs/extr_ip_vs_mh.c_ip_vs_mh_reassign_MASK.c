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
struct ip_vs_service {int num_dests; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; int /*<<< orphan*/  af; } ;
struct ip_vs_mh_state {int /*<<< orphan*/ * dest_setup; } ;
struct ip_vs_mh_dest_setup {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_VS_MH_TAB_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_mh_state*,struct ip_vs_service*) ; 
 int FUNC3 (struct ip_vs_mh_state*,struct ip_vs_service*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ip_vs_mh_state *s,
			     struct ip_vs_service *svc)
{
	int ret;

	if (svc->num_dests > IP_VS_MH_TAB_SIZE)
		return -EINVAL;

	if (svc->num_dests >= 1) {
		s->dest_setup = FUNC4(svc->num_dests,
					sizeof(struct ip_vs_mh_dest_setup),
					GFP_KERNEL);
		if (!s->dest_setup)
			return -ENOMEM;
	}

	FUNC2(s, svc);

	ret = FUNC3(s, svc);
	if (ret < 0)
		goto out;

	FUNC1(6, "MH: reassign lookup table of %s:%u\n",
		      FUNC0(svc->af, &svc->addr),
		      FUNC6(svc->port));

out:
	if (svc->num_dests >= 1) {
		FUNC5(s->dest_setup);
		s->dest_setup = NULL;
	}
	return ret;
}