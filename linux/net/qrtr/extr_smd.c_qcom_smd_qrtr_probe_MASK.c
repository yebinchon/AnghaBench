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
struct rpmsg_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ept; } ;
struct TYPE_2__ {int /*<<< orphan*/  xmit; } ;
struct qrtr_smd_dev {TYPE_1__ ep; int /*<<< orphan*/ * dev; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QRTR_EP_NID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct qrtr_smd_dev*) ; 
 struct qrtr_smd_dev* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_smd_qrtr_send ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rpmsg_device *rpdev)
{
	struct qrtr_smd_dev *qdev;
	int rc;

	qdev = FUNC2(&rpdev->dev, sizeof(*qdev), GFP_KERNEL);
	if (!qdev)
		return -ENOMEM;

	qdev->channel = rpdev->ept;
	qdev->dev = &rpdev->dev;
	qdev->ep.xmit = qcom_smd_qrtr_send;

	rc = FUNC3(&qdev->ep, QRTR_EP_NID_AUTO);
	if (rc)
		return rc;

	FUNC1(&rpdev->dev, qdev);

	FUNC0(&rpdev->dev, "Qualcomm SMD QRTR driver probed\n");

	return 0;
}