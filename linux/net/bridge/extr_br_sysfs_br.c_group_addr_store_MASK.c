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
typedef  int u8 ;
struct net_bridge {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  group_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_GROUP_ADDR_SET ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct net_bridge* FUNC13 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC14(struct device *d,
				struct device_attribute *attr,
				const char *buf, size_t len)
{
	struct net_bridge *br = FUNC13(d);
	u8 new_addr[6];

	if (!FUNC7(FUNC2(br->dev)->user_ns, CAP_NET_ADMIN))
		return -EPERM;

	if (!FUNC5(buf, new_addr))
		return -EINVAL;

	if (!FUNC4(new_addr))
		return -EINVAL;

	if (new_addr[5] == 1 ||		/* 802.3x Pause address */
	    new_addr[5] == 2 ||		/* 802.3ad Slow protocols */
	    new_addr[5] == 3)		/* 802.1X PAE address */
		return -EINVAL;

	if (!FUNC9())
		return FUNC8();

	FUNC11(&br->lock);
	FUNC3(br->group_addr, new_addr);
	FUNC12(&br->lock);

	FUNC0(br, BROPT_GROUP_ADDR_SET, true);
	FUNC1(br);
	FUNC6(br->dev);

	FUNC10();

	return len;
}