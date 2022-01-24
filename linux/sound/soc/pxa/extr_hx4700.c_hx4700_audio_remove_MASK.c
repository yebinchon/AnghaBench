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
 int /*<<< orphan*/  GPIO107_HX4700_SPK_nSD ; 
 int /*<<< orphan*/  GPIO92_HX4700_HP_DRIVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hx4700_audio_gpios ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	FUNC2(GPIO92_HX4700_HP_DRIVER, 0);
	FUNC2(GPIO107_HX4700_SPK_nSD, 0);

	FUNC1(hx4700_audio_gpios, FUNC0(hx4700_audio_gpios));
	return 0;
}