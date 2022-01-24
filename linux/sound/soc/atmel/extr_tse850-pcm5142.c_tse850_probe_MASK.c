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
struct tse850_priv {int add_cache; int loop1_cache; int loop2_cache; void* ana; void* loop2; void* loop1; void* add; } ;
struct snd_soc_card {struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tse850_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_card*,struct tse850_priv*) ; 
 int FUNC9 (struct snd_soc_card*) ; 
 struct snd_soc_card tse850_card ; 
 int FUNC10 (struct platform_device*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct snd_soc_card *card = &tse850_card;
	struct device *dev = card->dev = &pdev->dev;
	struct tse850_priv *tse850;
	int ret;

	tse850 = FUNC4(dev, sizeof(*tse850), GFP_KERNEL);
	if (!tse850)
		return -ENOMEM;

	FUNC8(card, tse850);

	ret = FUNC10(pdev);
	if (ret) {
		FUNC2(dev, "failed to init dt info\n");
		return ret;
	}

	tse850->add = FUNC3(dev, "axentia,add", GPIOD_OUT_HIGH);
	if (FUNC0(tse850->add)) {
		if (FUNC1(tse850->add) != -EPROBE_DEFER)
			FUNC2(dev, "failed to get 'add' gpio\n");
		return FUNC1(tse850->add);
	}
	tse850->add_cache = 1;

	tse850->loop1 = FUNC3(dev, "axentia,loop1", GPIOD_OUT_HIGH);
	if (FUNC0(tse850->loop1)) {
		if (FUNC1(tse850->loop1) != -EPROBE_DEFER)
			FUNC2(dev, "failed to get 'loop1' gpio\n");
		return FUNC1(tse850->loop1);
	}
	tse850->loop1_cache = 1;

	tse850->loop2 = FUNC3(dev, "axentia,loop2", GPIOD_OUT_HIGH);
	if (FUNC0(tse850->loop2)) {
		if (FUNC1(tse850->loop2) != -EPROBE_DEFER)
			FUNC2(dev, "failed to get 'loop2' gpio\n");
		return FUNC1(tse850->loop2);
	}
	tse850->loop2_cache = 1;

	tse850->ana = FUNC5(dev, "axentia,ana");
	if (FUNC0(tse850->ana)) {
		if (FUNC1(tse850->ana) != -EPROBE_DEFER)
			FUNC2(dev, "failed to get 'ana' regulator\n");
		return FUNC1(tse850->ana);
	}

	ret = FUNC7(tse850->ana);
	if (ret < 0) {
		FUNC2(dev, "failed to enable the 'ana' regulator\n");
		return ret;
	}

	ret = FUNC9(card);
	if (ret) {
		FUNC2(dev, "snd_soc_register_card failed\n");
		goto err_disable_ana;
	}

	return 0;

err_disable_ana:
	FUNC6(tse850->ana);
	return ret;
}