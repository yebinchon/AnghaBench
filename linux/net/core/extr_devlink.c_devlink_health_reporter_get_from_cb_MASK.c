#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct netlink_callback {TYPE_1__* skb; int /*<<< orphan*/  extack; int /*<<< orphan*/  nlh; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  policy; scalar_t__ hdrsize; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 scalar_t__ DEVLINK_ATTR_MAX ; 
 scalar_t__ GENL_HDRLEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct devlink*) ; 
 struct devlink* FUNC1 (int /*<<< orphan*/ ,struct nlattr**) ; 
 struct devlink_health_reporter* FUNC2 (struct devlink*,struct nlattr**) ; 
 int /*<<< orphan*/  devlink_mutex ; 
 TYPE_2__ devlink_nl_family ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr**) ; 
 struct nlattr** FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,struct nlattr**,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct devlink_health_reporter *
FUNC9(struct netlink_callback *cb)
{
	struct devlink_health_reporter *reporter;
	struct devlink *devlink;
	struct nlattr **attrs;
	int err;

	attrs = FUNC4(DEVLINK_ATTR_MAX + 1, sizeof(*attrs), GFP_KERNEL);
	if (!attrs)
		return NULL;

	err = FUNC7(cb->nlh,
				     GENL_HDRLEN + devlink_nl_family.hdrsize,
				     attrs, DEVLINK_ATTR_MAX,
				     devlink_nl_family.policy, cb->extack);
	if (err)
		goto free;

	FUNC5(&devlink_mutex);
	devlink = FUNC1(FUNC8(cb->skb->sk), attrs);
	if (FUNC0(devlink))
		goto unlock;

	reporter = FUNC2(devlink, attrs);
	FUNC6(&devlink_mutex);
	FUNC3(attrs);
	return reporter;
unlock:
	FUNC6(&devlink_mutex);
free:
	FUNC3(attrs);
	return NULL;
}