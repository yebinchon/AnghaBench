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
struct sockaddr_qrtr {int sq_node; int sq_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sock; } ;
struct qmi_sample {TYPE_1__ qmi; void* de_dir; void* de_data; void* de_ping; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  TEST_DATA_REQ_MAX_MSG_LEN_V01 ; 
 int /*<<< orphan*/  data_fops ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*,int,void*,struct qmi_sample*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 struct sockaddr_qrtr* FUNC5 (int /*<<< orphan*/ *) ; 
 struct qmi_sample* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ping_fops ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct qmi_sample*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  qmi_debug_dir ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  qmi_sample_handlers ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct sockaddr_qrtr *sq;
	struct qmi_sample *sample;
	char path[20];
	int ret;

	sample = FUNC6(&pdev->dev, sizeof(*sample), GFP_KERNEL);
	if (!sample)
		return -ENOMEM;

	ret = FUNC10(&sample->qmi, TEST_DATA_REQ_MAX_MSG_LEN_V01,
			      NULL,
			      qmi_sample_handlers);
	if (ret < 0)
		return ret;

	sq = FUNC5(&pdev->dev);
	ret = FUNC7(sample->qmi.sock, (struct sockaddr *)sq,
			     sizeof(*sq), 0);
	if (ret < 0) {
		FUNC9("failed to connect to remote service port\n");
		goto err_release_qmi_handle;
	}

	FUNC12(path, sizeof(path), "%d:%d", sq->sq_node, sq->sq_port);

	sample->de_dir = FUNC2(path, qmi_debug_dir);
	if (FUNC0(sample->de_dir)) {
		ret = FUNC1(sample->de_dir);
		goto err_release_qmi_handle;
	}

	sample->de_data = FUNC3("data", 0600, sample->de_dir,
					      sample, &data_fops);
	if (FUNC0(sample->de_data)) {
		ret = FUNC1(sample->de_data);
		goto err_remove_de_dir;
	}

	sample->de_ping = FUNC3("ping", 0600, sample->de_dir,
					      sample, &ping_fops);
	if (FUNC0(sample->de_ping)) {
		ret = FUNC1(sample->de_ping);
		goto err_remove_de_data;
	}

	FUNC8(pdev, sample);

	return 0;

err_remove_de_data:
	FUNC4(sample->de_data);
err_remove_de_dir:
	FUNC4(sample->de_dir);
err_release_qmi_handle:
	FUNC11(&sample->qmi);

	return ret;
}