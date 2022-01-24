#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dmic_num; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct skl_nau88125_private {int /*<<< orphan*/  hdmi_pcm_list; } ;
struct TYPE_9__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_8__ {TYPE_4__* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  constraints_dmic_2ch ; 
 int /*<<< orphan*/  constraints_dmic_channels ; 
 struct skl_nau88125_private* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * dmic_constraints ; 
 TYPE_2__ skylake_audio_card ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct skl_nau88125_private*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct skl_nau88125_private *ctx;
	struct snd_soc_acpi_mach *mach;

	ctx = FUNC1(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC0(&ctx->hdmi_pcm_list);

	skylake_audio_card.dev = &pdev->dev;
	FUNC3(&skylake_audio_card, ctx);

	mach = (&pdev->dev)->platform_data;
	if (mach)
		dmic_constraints = mach->mach_params.dmic_num == 2 ?
			&constraints_dmic_2ch : &constraints_dmic_channels;

	return FUNC2(&pdev->dev, &skylake_audio_card);
}