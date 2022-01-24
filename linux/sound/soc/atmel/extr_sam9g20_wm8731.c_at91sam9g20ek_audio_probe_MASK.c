#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_card {TYPE_4__* dev; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_10__ {TYPE_3__* platforms; TYPE_2__* cpus; TYPE_1__* codecs; } ;
struct TYPE_8__ {struct device_node* of_node; int /*<<< orphan*/ * name; } ;
struct TYPE_7__ {struct device_node* of_node; int /*<<< orphan*/ * dai_name; } ;
struct TYPE_6__ {struct device_node* of_node; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  MCLK_RATE ; 
 int FUNC1 (struct clk*) ; 
 TYPE_5__ at91sam9g20ek_dai ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 int FUNC6 (struct clk*,struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (struct clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*) ; 
 struct clk* mclk ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct snd_soc_card snd_soc_at91sam9g20ek ; 
 int FUNC11 (struct snd_soc_card*,char*) ; 
 int FUNC12 (struct snd_soc_card*,char*) ; 
 int FUNC13 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct device_node *codec_np, *cpu_np;
	struct clk *pllb;
	struct snd_soc_card *card = &snd_soc_at91sam9g20ek;
	int ret;

	if (!np) {
		return -ENODEV;
	}

	ret = FUNC3(0);
	if (ret) {
		FUNC8(&pdev->dev, "ssc channel is not valid\n");
		return -EINVAL;
	}

	/*
	 * Codec MCLK is supplied by PCK0 - set it up.
	 */
	mclk = FUNC4(NULL, "pck0");
	if (FUNC0(mclk)) {
		FUNC8(&pdev->dev, "Failed to get MCLK\n");
		ret = FUNC1(mclk);
		goto err;
	}

	pllb = FUNC4(NULL, "pllb");
	if (FUNC0(pllb)) {
		FUNC8(&pdev->dev, "Failed to get PLLB\n");
		ret = FUNC1(pllb);
		goto err_mclk;
	}
	ret = FUNC6(mclk, pllb);
	FUNC5(pllb);
	if (ret != 0) {
		FUNC8(&pdev->dev, "Failed to set MCLK parent\n");
		goto err_mclk;
	}

	FUNC7(mclk, MCLK_RATE);

	card->dev = &pdev->dev;

	/* Parse device node info */
	ret = FUNC12(card, "atmel,model");
	if (ret)
		goto err;

	ret = FUNC11(card,
		"atmel,audio-routing");
	if (ret)
		goto err;

	/* Parse codec info */
	at91sam9g20ek_dai.codecs->name = NULL;
	codec_np = FUNC10(np, "atmel,audio-codec", 0);
	if (!codec_np) {
		FUNC8(&pdev->dev, "codec info missing\n");
		return -EINVAL;
	}
	at91sam9g20ek_dai.codecs->of_node = codec_np;

	/* Parse dai and platform info */
	at91sam9g20ek_dai.cpus->dai_name = NULL;
	at91sam9g20ek_dai.platforms->name = NULL;
	cpu_np = FUNC10(np, "atmel,ssc-controller", 0);
	if (!cpu_np) {
		FUNC8(&pdev->dev, "dai and pcm info missing\n");
		return -EINVAL;
	}
	at91sam9g20ek_dai.cpus->of_node = cpu_np;
	at91sam9g20ek_dai.platforms->of_node = cpu_np;

	FUNC9(codec_np);
	FUNC9(cpu_np);

	ret = FUNC13(card);
	if (ret) {
		FUNC8(&pdev->dev, "snd_soc_register_card() failed\n");
	}

	return ret;

err_mclk:
	FUNC5(mclk);
	mclk = NULL;
err:
	FUNC2(0);
	return ret;
}