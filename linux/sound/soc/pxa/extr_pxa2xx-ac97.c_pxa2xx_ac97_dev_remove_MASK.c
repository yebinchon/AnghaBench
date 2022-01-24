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
struct platform_device {int dummy; } ;
struct ac97_controller {int dummy; } ;

/* Variables and functions */
 struct ac97_controller* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ac97_controller*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct ac97_controller *ctrl = FUNC0(pdev);

	FUNC2(ctrl);
	FUNC1(pdev);
	return 0;
}