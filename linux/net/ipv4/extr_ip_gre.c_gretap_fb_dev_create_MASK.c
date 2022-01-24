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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  tb ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel {int collect_md; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int) ; 
 int /*<<< orphan*/  IFLA_MAX ; 
 int /*<<< orphan*/  IP_MAX_MTU ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct net*,struct net_device*,struct nlattr**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipgre_tap_ops ; 
 int /*<<< orphan*/  list_kill ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr***,int /*<<< orphan*/ ,int) ; 
 struct ip_tunnel* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC10 (struct net*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nlattr**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct net_device *FUNC12(struct net *net, const char *name,
					u8 name_assign_type)
{
	struct nlattr *tb[IFLA_MAX + 1];
	struct net_device *dev;
	FUNC2(list_kill);
	struct ip_tunnel *t;
	int err;

	FUNC7(&tb, 0, sizeof(tb));

	dev = FUNC10(net, name, name_assign_type,
			       &ipgre_tap_ops, tb, NULL);
	if (FUNC1(dev))
		return dev;

	/* Configure flow based GRE device. */
	t = FUNC8(dev);
	t->collect_md = true;

	err = FUNC6(net, dev, tb, NULL, NULL);
	if (err < 0) {
		FUNC4(dev);
		return FUNC0(err);
	}

	/* openvswitch users expect packet sizes to be unrestricted,
	 * so set the largest MTU we can.
	 */
	err = FUNC3(dev, IP_MAX_MTU, false);
	if (err)
		goto out;

	err = FUNC9(dev, NULL);
	if (err < 0)
		goto out;

	return dev;
out:
	FUNC5(dev, &list_kill);
	FUNC11(&list_kill);
	return FUNC0(err);
}