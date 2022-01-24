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
struct TYPE_2__ {struct arizona* arizona; } ;
struct wm8998_priv {TYPE_1__ core; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct arizona {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arizona*) ; 
 struct wm8998_priv* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct wm8998_priv *wm8998 = FUNC1(pdev);
	struct arizona *arizona = wm8998->core.arizona;

	FUNC2(&pdev->dev);

	FUNC0(arizona);

	return 0;
}