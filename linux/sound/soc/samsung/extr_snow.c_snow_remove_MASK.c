#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_link {TYPE_2__* codecs; TYPE_1__* cpus; } ;
struct snow_priv {int /*<<< orphan*/  clk_i2s_bus; struct snd_soc_dai_link dai_link; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct snow_priv* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai_link*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct snow_priv *priv = FUNC2(pdev);
	struct snd_soc_dai_link *link = &priv->dai_link;

	FUNC1(link->cpus->of_node);
	FUNC1(link->codecs->of_node);
	FUNC3(link);

	FUNC0(priv->clk_i2s_bus);

	return 0;
}