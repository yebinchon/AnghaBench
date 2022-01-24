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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ncsi_dev_priv {int flags; int multi_package; TYPE_1__ ndev; int /*<<< orphan*/  lock; int /*<<< orphan*/  package_whitelist; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 size_t NCSI_ATTR_IFINDEX ; 
 size_t NCSI_ATTR_MULTI_FLAG ; 
 size_t NCSI_ATTR_PACKAGE_MASK ; 
 int NCSI_DEV_HWA ; 
 int NCSI_DEV_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct ncsi_dev_priv* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *msg,
				    struct genl_info *info)
{
	struct ncsi_dev_priv *ndp;
	unsigned long flags;
	int rc;

	if (!info || !info->attrs)
		return -EINVAL;

	if (!info->attrs[NCSI_ATTR_IFINDEX])
		return -EINVAL;

	if (!info->attrs[NCSI_ATTR_PACKAGE_MASK])
		return -EINVAL;

	ndp = FUNC2(FUNC0(FUNC6(msg->sk)),
			       FUNC5(info->attrs[NCSI_ATTR_IFINDEX]));
	if (!ndp)
		return -ENODEV;

	FUNC7(&ndp->lock, flags);
	if (FUNC4(info->attrs[NCSI_ATTR_MULTI_FLAG])) {
		if (ndp->flags & NCSI_DEV_HWA) {
			ndp->multi_package = true;
			rc = 0;
		} else {
			FUNC3(ndp->ndev.dev,
				   "NCSI: Can't use multiple packages without HWA\n");
			rc = -EPERM;
		}
	} else {
		ndp->multi_package = false;
		rc = 0;
	}

	if (!rc)
		ndp->package_whitelist =
			FUNC5(info->attrs[NCSI_ATTR_PACKAGE_MASK]);
	FUNC8(&ndp->lock, flags);

	if (!rc) {
		/* Update channel configuration */
		if (!(ndp->flags & NCSI_DEV_RESET))
			FUNC1(&ndp->ndev);
	}

	return rc;
}