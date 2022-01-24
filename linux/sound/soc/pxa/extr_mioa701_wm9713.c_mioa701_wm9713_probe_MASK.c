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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ mioa701 ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int rc;

	if (!FUNC2())
		return -ENODEV;

	mioa701.dev = &pdev->dev;
	rc = FUNC1(&pdev->dev, &mioa701);
	if (!rc)
		FUNC0(&pdev->dev, "Be warned that incorrect mixers/muxes setup will "
			 "lead to overheating and possible destruction of your device."
			 " Do not use without a good knowledge of mio's board design!\n");
	return rc;
}