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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct au1xpsc_audio_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EN_D ; 
 int /*<<< orphan*/  I2S_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct au1xpsc_audio_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct au1xpsc_audio_data *ctx = FUNC1(pdev);

	FUNC2(&pdev->dev);

	FUNC0(ctx, I2S_ENABLE, EN_D);	/* clock off, disable */

	return 0;
}