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
struct tegra_trimslice {int /*<<< orphan*/  util_data; } ;
struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct snd_soc_card* FUNC0 (struct platform_device*) ; 
 struct tegra_trimslice* FUNC1 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct snd_soc_card *card = FUNC0(pdev);
	struct tegra_trimslice *trimslice = FUNC1(card);

	FUNC2(card);

	FUNC3(&trimslice->util_data);

	return 0;
}