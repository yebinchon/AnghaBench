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
struct rpmsg_device {int /*<<< orphan*/  dev; } ;
struct qrtr_smd_dev {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 struct qrtr_smd_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rpmsg_device *rpdev)
{
	struct qrtr_smd_dev *qdev = FUNC0(&rpdev->dev);

	FUNC2(&qdev->ep);

	FUNC1(&rpdev->dev, NULL);
}