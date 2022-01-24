#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct sof_card_private {int /*<<< orphan*/  hdmi_pcm_list; int /*<<< orphan*/  mclk; } ;
struct snd_soc_dai_link {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct TYPE_13__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_14__ {int num_links; TYPE_2__* dev; struct snd_soc_dai_link* dai_link; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SOF_RT5682_MCLK_BYTCHT_EN ; 
 int SOF_RT5682_MCLK_EN ; 
 int SOF_RT5682_SSP_AMP_MASK ; 
 int SOF_RT5682_SSP_AMP_SHIFT ; 
 int FUNC3 (int) ; 
 int SOF_RT5682_SSP_CODEC_MASK ; 
 int SOF_SPEAKER_AMP_PRESENT ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 struct sof_card_private* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int is_legacy_cpu ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,struct sof_card_private*) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 TYPE_3__ sof_audio_card_rt5682 ; 
 struct snd_soc_dai_link* FUNC15 (TYPE_2__*,int,int,int,int) ; 
 int sof_rt5682_quirk ; 
 int /*<<< orphan*/  sof_rt5682_quirk_table ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct snd_soc_dai_link *dai_links;
	struct snd_soc_acpi_mach *mach;
	struct sof_card_private *ctx;
	int dmic_be_num, hdmi_num;
	int ret, ssp_amp, ssp_codec;

	ctx = FUNC8(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	if (FUNC13() || FUNC14()) {
		is_legacy_cpu = 1;
		dmic_be_num = 0;
		hdmi_num = 0;
		/* default quirk for legacy cpu */
		sof_rt5682_quirk = SOF_RT5682_MCLK_EN |
						SOF_RT5682_MCLK_BYTCHT_EN |
						FUNC3(2);
	} else {
		dmic_be_num = 2;
		hdmi_num = 3;
	}

	FUNC10(sof_rt5682_quirk_table);

	/* need to get main clock from pmc */
	if (sof_rt5682_quirk & SOF_RT5682_MCLK_BYTCHT_EN) {
		ctx->mclk = FUNC7(&pdev->dev, "pmc_plt_clk_3");
		if (FUNC1(ctx->mclk)) {
			ret = FUNC2(ctx->mclk);

			FUNC6(&pdev->dev,
				"Failed to get MCLK from pmc_plt_clk_3: %d\n",
				ret);
			return ret;
		}

		ret = FUNC4(ctx->mclk);
		if (ret < 0) {
			FUNC6(&pdev->dev,
				"could not configure MCLK state");
			return ret;
		}
	}

	FUNC5(&pdev->dev, "sof_rt5682_quirk = %lx\n", sof_rt5682_quirk);

	ssp_amp = (sof_rt5682_quirk & SOF_RT5682_SSP_AMP_MASK) >>
			SOF_RT5682_SSP_AMP_SHIFT;

	ssp_codec = sof_rt5682_quirk & SOF_RT5682_SSP_CODEC_MASK;

	/* compute number of dai links */
	sof_audio_card_rt5682.num_links = 1 + dmic_be_num + hdmi_num;

	if (sof_rt5682_quirk & SOF_SPEAKER_AMP_PRESENT)
		sof_audio_card_rt5682.num_links++;

	dai_links = FUNC15(&pdev->dev, ssp_codec, ssp_amp,
					      dmic_be_num, hdmi_num);
	if (!dai_links)
		return -ENOMEM;

	sof_audio_card_rt5682.dai_link = dai_links;

	FUNC0(&ctx->hdmi_pcm_list);

	sof_audio_card_rt5682.dev = &pdev->dev;
	mach = (&pdev->dev)->platform_data;

	/* set platform name for each dailink */
	ret = FUNC12(&sof_audio_card_rt5682,
						    mach->mach_params.platform);
	if (ret)
		return ret;

	FUNC11(&sof_audio_card_rt5682, ctx);

	return FUNC9(&pdev->dev,
					  &sof_audio_card_rt5682);
}