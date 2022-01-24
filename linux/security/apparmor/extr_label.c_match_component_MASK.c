#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* hname; } ;
struct TYPE_3__ {int /*<<< orphan*/  dfa; } ;
struct aa_profile {scalar_t__ ns; TYPE_2__ base; TYPE_1__ policy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int,char const*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int,char*,int) ; 
 char* FUNC2 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct aa_profile *profile,
					   struct aa_profile *tp,
					   unsigned int state)
{
	const char *ns_name;

	if (profile->ns == tp->ns)
		return FUNC0(profile->policy.dfa, state, tp->base.hname);

	/* try matching with namespace name and then profile */
	ns_name = FUNC2(profile->ns, tp->ns, true);
	state = FUNC1(profile->policy.dfa, state, ":", 1);
	state = FUNC0(profile->policy.dfa, state, ns_name);
	state = FUNC1(profile->policy.dfa, state, ":", 1);
	return FUNC0(profile->policy.dfa, state, tp->base.hname);
}