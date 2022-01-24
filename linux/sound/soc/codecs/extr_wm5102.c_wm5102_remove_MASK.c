#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * adsp; struct arizona* arizona; } ;
struct wm5102_priv {TYPE_1__ core; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct arizona {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_IRQ_DSP_IRQ1 ; 
 int /*<<< orphan*/  FUNC0 (struct arizona*,int /*<<< orphan*/ ,struct wm5102_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct arizona*) ; 
 int /*<<< orphan*/  FUNC2 (struct arizona*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wm5102_priv* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct wm5102_priv *wm5102 = FUNC3(pdev);
	struct arizona *arizona = wm5102->core.arizona;

	FUNC4(&pdev->dev);

	FUNC5(&wm5102->core.adsp[0]);

	FUNC1(arizona);

	FUNC2(arizona, ARIZONA_IRQ_DSP_IRQ1, 0);
	FUNC0(arizona, ARIZONA_IRQ_DSP_IRQ1, wm5102);

	return 0;
}