#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smcd_ops {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  release; struct device* parent; } ;
struct smcd_dev {struct smcd_dev* conn; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  vlan; int /*<<< orphan*/  lock; int /*<<< orphan*/  pnetid; struct smcd_ops const* ops; TYPE_1__ dev; } ;
struct smc_connection {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct smcd_dev* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smcd_dev*) ; 
 struct smcd_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smcd_release ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct smcd_dev *FUNC9(struct device *parent, const char *name,
				const struct smcd_ops *ops, int max_dmbs)
{
	struct smcd_dev *smcd;

	smcd = FUNC6(sizeof(*smcd), GFP_KERNEL);
	if (!smcd)
		return NULL;
	smcd->conn = FUNC4(max_dmbs, sizeof(struct smc_connection *),
			     GFP_KERNEL);
	if (!smcd->conn) {
		FUNC5(smcd);
		return NULL;
	}

	smcd->dev.parent = parent;
	smcd->dev.release = smcd_release;
	FUNC3(&smcd->dev);
	FUNC2(&smcd->dev, name);
	smcd->ops = ops;
	FUNC7(parent, 0, smcd->pnetid);

	FUNC8(&smcd->lock);
	FUNC0(&smcd->vlan);
	smcd->event_wq = FUNC1("ism_evt_wq-%s)",
						 WQ_MEM_RECLAIM, name);
	if (!smcd->event_wq) {
		FUNC5(smcd->conn);
		FUNC5(smcd);
		return NULL;
	}
	return smcd;
}