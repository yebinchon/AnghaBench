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
struct sockaddr_qrtr {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct qmi_service {struct platform_device* priv; int /*<<< orphan*/  port; int /*<<< orphan*/  node; } ;
struct qmi_handle {int dummy; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  sq ;

/* Variables and functions */
 int /*<<< orphan*/  AF_QIPCRTR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*,struct sockaddr_qrtr*,int) ; 
 struct platform_device* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct qmi_handle *qmi,
				 struct qmi_service *service)
{
	struct platform_device *pdev;
	struct sockaddr_qrtr sq = { AF_QIPCRTR, service->node, service->port };
	int ret;

	pdev = FUNC2("qmi_sample_client", PLATFORM_DEVID_AUTO);
	if (!pdev)
		return -ENOMEM;

	ret = FUNC1(pdev, &sq, sizeof(sq));
	if (ret)
		goto err_put_device;

	ret = FUNC0(pdev);
	if (ret)
		goto err_put_device;

	service->priv = pdev;

	return 0;

err_put_device:
	FUNC3(pdev);

	return ret;
}