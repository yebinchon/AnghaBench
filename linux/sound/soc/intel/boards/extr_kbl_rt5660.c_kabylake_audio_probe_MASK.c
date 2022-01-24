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
struct snd_soc_card {int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; TYPE_1__* id_entry; } ;
struct kbl_codec_private {int /*<<< orphan*/  hdmi_pcm_list; } ;
struct TYPE_2__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct kbl_codec_private* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 
 struct snd_soc_card* kabylake_audio_card ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*,struct kbl_codec_private*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct kbl_codec_private *ctx;

	ctx = FUNC1(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC0(&ctx->hdmi_pcm_list);

	kabylake_audio_card =
		(struct snd_soc_card *)pdev->id_entry->driver_data;

	kabylake_audio_card->dev = &pdev->dev;
	FUNC3(kabylake_audio_card, ctx);
	return FUNC2(&pdev->dev, kabylake_audio_card);
}