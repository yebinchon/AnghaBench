#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct vport {TYPE_1__* dev; int /*<<< orphan*/  dp; } ;
struct TYPE_9__ {int flags; scalar_t__ type; int /*<<< orphan*/  priv_flags; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 scalar_t__ ARPHRD_NONE ; 
 int EINVAL ; 
 int ENODEV ; 
 struct vport* FUNC0 (int) ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  IFF_OVS_DATAPATH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netdev_frame_hook ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,struct vport*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct vport*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

struct vport *FUNC14(struct vport *vport, const char *name)
{
	int err;

	vport->dev = FUNC2(FUNC9(vport->dp), name);
	if (!vport->dev) {
		err = -ENODEV;
		goto error_free_vport;
	}

	if (vport->dev->flags & IFF_LOOPBACK ||
	    (vport->dev->type != ARPHRD_ETHER &&
	     vport->dev->type != ARPHRD_NONE) ||
	    FUNC10(vport->dev)) {
		err = -EINVAL;
		goto error_put;
	}

	FUNC12();
	err = FUNC6(vport->dev,
					   FUNC5(vport->dp),
					   NULL, NULL, NULL);
	if (err)
		goto error_unlock;

	err = FUNC7(vport->dev, netdev_frame_hook,
					 vport);
	if (err)
		goto error_master_upper_dev_unlink;

	FUNC1(vport->dev);
	FUNC4(vport->dev, 1);
	vport->dev->priv_flags |= IFF_OVS_DATAPATH;
	FUNC13();

	return vport;

error_master_upper_dev_unlink:
	FUNC8(vport->dev, FUNC5(vport->dp));
error_unlock:
	FUNC13();
error_put:
	FUNC3(vport->dev);
error_free_vport:
	FUNC11(vport);
	return FUNC0(err);
}