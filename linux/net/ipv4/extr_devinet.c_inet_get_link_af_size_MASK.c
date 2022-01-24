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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  ip_ptr; } ;
struct in_device {int dummy; } ;

/* Variables and functions */
 int IPV4_DEVCONF_MAX ; 
 size_t FUNC0 (int) ; 
 struct in_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(const struct net_device *dev,
				    u32 ext_filter_mask)
{
	struct in_device *in_dev = FUNC1(dev->ip_ptr);

	if (!in_dev)
		return 0;

	return FUNC0(IPV4_DEVCONF_MAX * 4); /* IFLA_INET_CONF */
}