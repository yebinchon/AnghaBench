#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tegra_sgtl5000 {int /*<<< orphan*/  util_data; } ;
struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_8__ {TYPE_2__* codecs; TYPE_1__* platforms; TYPE_3__* cpus; } ;
struct TYPE_7__ {int /*<<< orphan*/ * of_node; } ;
struct TYPE_6__ {int /*<<< orphan*/ * of_node; } ;
struct TYPE_5__ {int /*<<< orphan*/ * of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct snd_soc_card* FUNC1 (struct platform_device*) ; 
 struct tegra_sgtl5000* FUNC2 (struct snd_soc_card*) ; 
 int FUNC3 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__ tegra_sgtl5000_dai ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct snd_soc_card *card = FUNC1(pdev);
	struct tegra_sgtl5000 *machine = FUNC2(card);
	int ret;

	ret = FUNC3(card);

	FUNC4(&machine->util_data);

	FUNC0(tegra_sgtl5000_dai.cpus->of_node);
	tegra_sgtl5000_dai.cpus->of_node = NULL;
	tegra_sgtl5000_dai.platforms->of_node = NULL;
	FUNC0(tegra_sgtl5000_dai.codecs->of_node);
	tegra_sgtl5000_dai.codecs->of_node = NULL;

	return ret;
}