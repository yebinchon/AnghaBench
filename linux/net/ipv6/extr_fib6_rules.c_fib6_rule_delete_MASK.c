#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ fib6_rules_require_fldissect; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib_rule {struct net* fr_net; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fib_rule*) ; 

__attribute__((used)) static int FUNC1(struct fib_rule *rule)
{
	struct net *net = rule->fr_net;

	if (net->ipv6.fib6_rules_require_fldissect &&
	    FUNC0(rule))
		net->ipv6.fib6_rules_require_fldissect--;

	return 0;
}