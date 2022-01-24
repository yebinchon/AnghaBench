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
struct tegra30_i2s {int /*<<< orphan*/  clk_i2s; int /*<<< orphan*/  playback_fifo_cif; int /*<<< orphan*/  playback_i2s_cif; int /*<<< orphan*/  capture_fifo_cif; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra30_i2s* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct tegra30_i2s *i2s = FUNC1(&pdev->dev);

	FUNC2(&pdev->dev);
	if (!FUNC3(&pdev->dev))
		FUNC8(&pdev->dev);

	FUNC9(&pdev->dev);
	FUNC4(&pdev->dev);

	FUNC7(i2s->capture_fifo_cif);
	FUNC5(i2s->capture_fifo_cif);

	FUNC7(i2s->playback_i2s_cif);
	FUNC6(i2s->playback_fifo_cif);

	FUNC0(i2s->clk_i2s);

	return 0;
}