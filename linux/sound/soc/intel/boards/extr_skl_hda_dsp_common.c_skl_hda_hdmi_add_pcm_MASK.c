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
struct snd_soc_card {int /*<<< orphan*/  dev; } ;
struct skl_hda_private {int dai_index; int /*<<< orphan*/  hdmi_pcm_list; } ;
struct skl_hda_hdmi_pcm {int device; int /*<<< orphan*/  head; int /*<<< orphan*/  codec_dai; } ;
typedef  int /*<<< orphan*/  dai_name ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAME_SIZE ; 
 struct skl_hda_hdmi_pcm* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_card*,char*) ; 
 struct skl_hda_private* FUNC3 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

int FUNC5(struct snd_soc_card *card, int device)
{
	struct skl_hda_private *ctx = FUNC3(card);
	struct skl_hda_hdmi_pcm *pcm;
	char dai_name[NAME_SIZE];

	pcm = FUNC0(card->dev, sizeof(*pcm), GFP_KERNEL);
	if (!pcm)
		return -ENOMEM;

	FUNC4(dai_name, sizeof(dai_name), "intel-hdmi-hifi%d",
		 ctx->dai_index);
	pcm->codec_dai = FUNC2(card, dai_name);
	if (!pcm->codec_dai)
		return -EINVAL;

	pcm->device = device;
	FUNC1(&pcm->head, &ctx->hdmi_pcm_list);

	return 0;
}