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
struct xt_rateest_net {int /*<<< orphan*/  hash_lock; } ;
struct xt_rateest {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct xt_rateest* FUNC0 (struct xt_rateest_net*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct xt_rateest_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xt_rateest_id ; 

struct xt_rateest *FUNC4(struct net *net, const char *name)
{
	struct xt_rateest_net *xn = FUNC3(net, xt_rateest_id);
	struct xt_rateest *est;

	FUNC1(&xn->hash_lock);
	est = FUNC0(xn, name);
	FUNC2(&xn->hash_lock);
	return est;
}