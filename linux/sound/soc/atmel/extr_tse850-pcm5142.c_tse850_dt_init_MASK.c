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
struct snd_soc_dai_link {TYPE_3__* codecs; TYPE_2__* platforms; TYPE_1__* cpus; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_5__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct snd_soc_dai_link tse850_dailink ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct device_node *codec_np, *cpu_np;
	struct snd_soc_dai_link *dailink = &tse850_dailink;

	if (!np) {
		FUNC0(&pdev->dev, "only device tree supported\n");
		return -EINVAL;
	}

	cpu_np = FUNC2(np, "axentia,cpu-dai", 0);
	if (!cpu_np) {
		FUNC0(&pdev->dev, "failed to get cpu dai\n");
		return -EINVAL;
	}
	dailink->cpus->of_node = cpu_np;
	dailink->platforms->of_node = cpu_np;
	FUNC1(cpu_np);

	codec_np = FUNC2(np, "axentia,audio-codec", 0);
	if (!codec_np) {
		FUNC0(&pdev->dev, "failed to get codec info\n");
		return -EINVAL;
	}
	dailink->codecs->of_node = codec_np;
	FUNC1(codec_np);

	return 0;
}