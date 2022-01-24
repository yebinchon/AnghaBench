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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdata ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 struct platform_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  xtal_clk ; 

int FUNC4(struct platform_device *pdev)
{
	struct platform_device *snd_dev = FUNC3(pdev);

	FUNC2(snd_dev);

	FUNC1(pdata);
	FUNC0(xtal_clk);
	return 0;
}