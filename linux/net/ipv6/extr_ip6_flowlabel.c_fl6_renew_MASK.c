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
struct ip6_flowlabel {unsigned long lastuse; unsigned long linger; unsigned long expires; } ;

/* Variables and functions */
 int EPERM ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  ip6_fl_lock ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ip6_flowlabel *fl, unsigned long linger, unsigned long expires)
{
	linger = FUNC0(linger);
	if (!linger)
		return -EPERM;
	expires = FUNC0(expires);
	if (!expires)
		return -EPERM;

	FUNC1(&ip6_fl_lock);
	fl->lastuse = jiffies;
	if (FUNC3(fl->linger, linger))
		fl->linger = linger;
	if (FUNC3(expires, fl->linger))
		expires = fl->linger;
	if (FUNC3(fl->expires, fl->lastuse + expires))
		fl->expires = fl->lastuse + expires;
	FUNC2(&ip6_fl_lock);

	return 0;
}