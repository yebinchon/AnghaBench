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
struct snd_soc_card {int /*<<< orphan*/  num_dapm_widgets; int /*<<< orphan*/  dapm_widgets; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct apq8016_sbc_data {struct apq8016_sbc_data* spkr_iomux; struct apq8016_sbc_data* mic_iomux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct apq8016_sbc_data*) ; 
 int FUNC2 (struct apq8016_sbc_data*) ; 
 int /*<<< orphan*/  apq8016_sbc_dapm_widgets ; 
 struct apq8016_sbc_data* FUNC3 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 void* FUNC5 (struct device*,struct resource*) ; 
 struct snd_soc_card* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,struct snd_soc_card*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_card*,struct apq8016_sbc_data*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct snd_soc_card *card;
	struct apq8016_sbc_data *data;
	struct resource *res;

	card = FUNC6(dev, sizeof(*card), GFP_KERNEL);
	if (!card)
		return -ENOMEM;

	card->dev = dev;
	card->dapm_widgets = apq8016_sbc_dapm_widgets;
	card->num_dapm_widgets = FUNC0(apq8016_sbc_dapm_widgets);
	data = FUNC3(card);
	if (FUNC1(data)) {
		FUNC4(&pdev->dev, "Error resolving dai links: %ld\n",
			FUNC2(data));
		return FUNC2(data);
	}

	res = FUNC8(pdev, IORESOURCE_MEM, "mic-iomux");
	data->mic_iomux = FUNC5(dev, res);
	if (FUNC1(data->mic_iomux))
		return FUNC2(data->mic_iomux);

	res = FUNC8(pdev, IORESOURCE_MEM, "spkr-iomux");
	data->spkr_iomux = FUNC5(dev, res);
	if (FUNC1(data->spkr_iomux))
		return FUNC2(data->spkr_iomux);

	FUNC9(card, data);

	return FUNC7(&pdev->dev, card);
}