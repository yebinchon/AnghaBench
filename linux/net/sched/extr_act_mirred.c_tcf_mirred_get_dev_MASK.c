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
typedef  int /*<<< orphan*/  tc_action_priv_destructor ;
struct tcf_mirred {int /*<<< orphan*/  tcfm_dev; } ;
struct tc_action {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  tcf_mirred_dev_put ; 
 struct tcf_mirred* FUNC4 (struct tc_action const*) ; 

__attribute__((used)) static struct net_device *
FUNC5(const struct tc_action *a,
		   tc_action_priv_destructor *destructor)
{
	struct tcf_mirred *m = FUNC4(a);
	struct net_device *dev;

	FUNC2();
	dev = FUNC1(m->tcfm_dev);
	if (dev) {
		FUNC0(dev);
		*destructor = tcf_mirred_dev_put;
	}
	FUNC3();

	return dev;
}