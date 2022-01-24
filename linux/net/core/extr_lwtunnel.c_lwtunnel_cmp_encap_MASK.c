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
struct lwtunnel_state {size_t type; } ;
struct lwtunnel_encap_ops {int (* cmp_encap ) (struct lwtunnel_state*,struct lwtunnel_state*) ;} ;

/* Variables and functions */
 size_t LWTUNNEL_ENCAP_MAX ; 
 size_t LWTUNNEL_ENCAP_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lwtun_encaps ; 
 struct lwtunnel_encap_ops* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct lwtunnel_state*,struct lwtunnel_state*) ; 

int FUNC5(struct lwtunnel_state *a, struct lwtunnel_state *b)
{
	const struct lwtunnel_encap_ops *ops;
	int ret = 0;

	if (!a && !b)
		return 0;

	if (!a || !b)
		return 1;

	if (a->type != b->type)
		return 1;

	if (a->type == LWTUNNEL_ENCAP_NONE ||
	    a->type > LWTUNNEL_ENCAP_MAX)
		return 0;

	FUNC2();
	ops = FUNC1(lwtun_encaps[a->type]);
	if (FUNC0(ops && ops->cmp_encap))
		ret = ops->cmp_encap(a, b);
	FUNC3();

	return ret;
}