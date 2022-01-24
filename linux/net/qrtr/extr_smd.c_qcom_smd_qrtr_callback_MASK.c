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
struct rpmsg_device {int /*<<< orphan*/  dev; } ;
struct qrtr_smd_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct qrtr_smd_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int FUNC3(struct rpmsg_device *rpdev,
				  void *data, int len, void *priv, u32 addr)
{
	struct qrtr_smd_dev *qdev = FUNC1(&rpdev->dev);
	int rc;

	if (!qdev)
		return -EAGAIN;

	rc = FUNC2(&qdev->ep, data, len);
	if (rc == -EINVAL) {
		FUNC0(qdev->dev, "invalid ipcrouter packet\n");
		/* return 0 to let smd drop the packet */
		rc = 0;
	}

	return rc;
}