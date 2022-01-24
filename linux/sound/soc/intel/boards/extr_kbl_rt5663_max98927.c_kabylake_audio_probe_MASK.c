#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_card {TYPE_3__* dev; } ;
struct TYPE_9__ {int dmic_num; } ;
struct snd_soc_acpi_mach {TYPE_2__ mach_params; } ;
struct TYPE_10__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_3__ dev; TYPE_1__* id_entry; } ;
struct kbl_rt5663_private {void* sclk; void* mclk; int /*<<< orphan*/  hdmi_pcm_list; } ;
struct TYPE_8__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  constraints_dmic_2ch ; 
 int /*<<< orphan*/  constraints_dmic_channels ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 void* FUNC5 (TYPE_3__*,char*) ; 
 struct kbl_rt5663_private* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,struct snd_soc_card*) ; 
 int /*<<< orphan*/ * dmic_constraints ; 
 struct snd_soc_card* kabylake_audio_card ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_card*,struct kbl_rt5663_private*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct kbl_rt5663_private *ctx;
	struct snd_soc_acpi_mach *mach;
	int ret;

	ctx = FUNC6(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC0(&ctx->hdmi_pcm_list);

	kabylake_audio_card =
		(struct snd_soc_card *)pdev->id_entry->driver_data;

	kabylake_audio_card->dev = &pdev->dev;
	FUNC8(kabylake_audio_card, ctx);

	mach = (&pdev->dev)->platform_data;
	if (mach)
		dmic_constraints = mach->mach_params.dmic_num == 2 ?
			&constraints_dmic_2ch : &constraints_dmic_channels;

	ctx->mclk = FUNC5(&pdev->dev, "ssp1_mclk");
	if (FUNC1(ctx->mclk)) {
		ret = FUNC2(ctx->mclk);
		if (ret == -ENOENT) {
			FUNC4(&pdev->dev,
				"Failed to get ssp1_sclk, defer probe\n");
			return -EPROBE_DEFER;
		}

		FUNC3(&pdev->dev, "Failed to get ssp1_mclk with err:%d\n",
								ret);
		return ret;
	}

	ctx->sclk = FUNC5(&pdev->dev, "ssp1_sclk");
	if (FUNC1(ctx->sclk)) {
		ret = FUNC2(ctx->sclk);
		if (ret == -ENOENT) {
			FUNC4(&pdev->dev,
				"Failed to get ssp1_sclk, defer probe\n");
			return -EPROBE_DEFER;
		}

		FUNC3(&pdev->dev, "Failed to get ssp1_sclk with err:%d\n",
								ret);
		return ret;
	}

	return FUNC7(&pdev->dev, kabylake_audio_card);
}