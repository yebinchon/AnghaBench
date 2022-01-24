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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hx4700_audio_gpios ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ snd_soc_card_hx4700 ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	int ret;

	if (!FUNC4())
		return -ENODEV;

	ret = FUNC3(hx4700_audio_gpios,
				FUNC0(hx4700_audio_gpios));
	if (ret)
		return ret;

	snd_soc_card_hx4700.dev = &pdev->dev;
	ret = FUNC1(&pdev->dev, &snd_soc_card_hx4700);
	if (ret)
		FUNC2(hx4700_audio_gpios,
				FUNC0(hx4700_audio_gpios));

	return ret;
}