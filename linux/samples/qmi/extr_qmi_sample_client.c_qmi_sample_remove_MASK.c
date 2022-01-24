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
struct qmi_sample {int /*<<< orphan*/  qmi; int /*<<< orphan*/  de_dir; int /*<<< orphan*/  de_data; int /*<<< orphan*/  de_ping; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qmi_sample* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct qmi_sample *sample = FUNC1(pdev);

	FUNC0(sample->de_ping);
	FUNC0(sample->de_data);
	FUNC0(sample->de_dir);

	FUNC2(&sample->qmi);

	return 0;
}