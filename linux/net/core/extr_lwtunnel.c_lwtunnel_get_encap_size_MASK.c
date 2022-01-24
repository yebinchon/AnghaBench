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
struct lwtunnel_encap_ops {int /*<<< orphan*/  (* get_encap_size ) (struct lwtunnel_state*) ;} ;

/* Variables and functions */
 size_t LWTUNNEL_ENCAP_MAX ; 
 size_t LWTUNNEL_ENCAP_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * lwtun_encaps ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct lwtunnel_encap_ops* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct lwtunnel_state*) ; 

int FUNC6(struct lwtunnel_state *lwtstate)
{
	const struct lwtunnel_encap_ops *ops;
	int ret = 0;

	if (!lwtstate)
		return 0;

	if (lwtstate->type == LWTUNNEL_ENCAP_NONE ||
	    lwtstate->type > LWTUNNEL_ENCAP_MAX)
		return 0;

	FUNC3();
	ops = FUNC2(lwtun_encaps[lwtstate->type]);
	if (FUNC0(ops && ops->get_encap_size))
		ret = FUNC1(ops->get_encap_size(lwtstate));
	FUNC4();

	return ret;
}