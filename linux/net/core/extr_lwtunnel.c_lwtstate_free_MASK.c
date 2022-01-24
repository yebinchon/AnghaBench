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
struct lwtunnel_encap_ops {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* destroy_state ) (struct lwtunnel_state*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lwtunnel_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct lwtunnel_state*,int /*<<< orphan*/ ) ; 
 struct lwtunnel_encap_ops** lwtun_encaps ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC3 (struct lwtunnel_state*) ; 

void FUNC4(struct lwtunnel_state *lws)
{
	const struct lwtunnel_encap_ops *ops = lwtun_encaps[lws->type];

	if (ops->destroy_state) {
		ops->destroy_state(lws);
		FUNC1(lws, rcu);
	} else {
		FUNC0(lws);
	}
	FUNC2(ops->owner);
}