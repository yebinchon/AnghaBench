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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lookup_client ; 
 int /*<<< orphan*/  lookup_ops ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmi_debug_dir ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qmi_sample_driver ; 

__attribute__((used)) static int FUNC9(void)
{
	int ret;

	qmi_debug_dir = FUNC2("qmi_sample", NULL);
	if (FUNC0(qmi_debug_dir)) {
		FUNC6("failed to create qmi_sample dir\n");
		return FUNC1(qmi_debug_dir);
	}

	ret = FUNC4(&qmi_sample_driver);
	if (ret)
		goto err_remove_debug_dir;

	ret = FUNC8(&lookup_client, 0, &lookup_ops, NULL);
	if (ret < 0)
		goto err_unregister_driver;

	FUNC7(&lookup_client, 15, 0, 0);

	return 0;

err_unregister_driver:
	FUNC5(&qmi_sample_driver);
err_remove_debug_dir:
	FUNC3(qmi_debug_dir);

	return ret;
}