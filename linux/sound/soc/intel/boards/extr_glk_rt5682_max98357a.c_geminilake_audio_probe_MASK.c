#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_card {TYPE_2__* dev; } ;
struct TYPE_4__ {char* platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct TYPE_5__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct glk_card_private {int /*<<< orphan*/  hdmi_pcm_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct glk_card_private* FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,struct snd_soc_card*) ; 
 struct snd_soc_card glk_audio_card_rt5682_m98357a ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*,struct glk_card_private*) ; 
 int FUNC4 (struct snd_soc_card*,char const*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct glk_card_private *ctx;
	struct snd_soc_acpi_mach *mach;
	const char *platform_name;
	struct snd_soc_card *card;
	int ret;

	ctx = FUNC1(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC0(&ctx->hdmi_pcm_list);

	card = &glk_audio_card_rt5682_m98357a;
	card->dev = &pdev->dev;
	FUNC3(card, ctx);

	/* override plaform name, if required */
	mach = (&pdev->dev)->platform_data;
	platform_name = mach->mach_params.platform;

	ret = FUNC4(card, platform_name);
	if (ret)
		return ret;

	return FUNC2(&pdev->dev, card);
}