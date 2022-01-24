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
struct au1xpsc_audio_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  PSC_CTRL_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct au1xpsc_audio_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct au1xpsc_audio_data *wd = FUNC3(pdev);

	FUNC2(0, FUNC0(wd));
	FUNC4(); /* drain writebuffer */
	FUNC2(PSC_CTRL_DISABLE, FUNC1(wd));
	FUNC4(); /* drain writebuffer */

	return 0;
}