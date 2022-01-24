#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ipv6_txoptions {int dummy; } ;
struct ip6_flowlabel {unsigned long lastuse; unsigned long linger; unsigned long expires; scalar_t__ share; struct ipv6_txoptions* opt; int /*<<< orphan*/  users; } ;
struct TYPE_4__ {unsigned long expires; } ;

/* Variables and functions */
 scalar_t__ IPV6_FL_S_EXCL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ ip6_fl_gc_timer ; 
 int /*<<< orphan*/  ip6_fl_lock ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct ipv6_txoptions*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct ip6_flowlabel *fl)
{
	FUNC3(&ip6_fl_lock);

	fl->lastuse = jiffies;
	if (FUNC0(&fl->users)) {
		unsigned long ttd = fl->lastuse + fl->linger;
		if (FUNC5(ttd, fl->expires))
			fl->expires = ttd;
		ttd = fl->expires;
		if (fl->opt && fl->share == IPV6_FL_S_EXCL) {
			struct ipv6_txoptions *opt = fl->opt;
			fl->opt = NULL;
			FUNC1(opt);
		}
		if (!FUNC6(&ip6_fl_gc_timer) ||
		    FUNC5(ip6_fl_gc_timer.expires, ttd))
			FUNC2(&ip6_fl_gc_timer, ttd);
	}
	FUNC4(&ip6_fl_lock);
}