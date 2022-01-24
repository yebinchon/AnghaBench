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
struct net_device {int priv_flags; } ;

/* Variables and functions */
 int IFF_EBRIDGE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct net_device *FUNC4(struct net_device *soft_iface)
{
	struct net_device *upper = soft_iface;

	FUNC2();
	do {
		upper = FUNC1(upper);
	} while (upper && !(upper->priv_flags & IFF_EBRIDGE));

	if (upper)
		FUNC0(upper);
	FUNC3();

	return upper;
}