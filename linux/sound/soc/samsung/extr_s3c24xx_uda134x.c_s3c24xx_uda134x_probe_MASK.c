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
struct snd_soc_card {int /*<<< orphan*/ * dev; } ;
struct s3c24xx_uda134x {int /*<<< orphan*/  clk_lock; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct s3c24xx_uda134x* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_card*,struct s3c24xx_uda134x*) ; 
 struct snd_soc_card snd_soc_s3c24xx_uda134x ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct snd_soc_card *card = &snd_soc_s3c24xx_uda134x;
	struct s3c24xx_uda134x *priv;
	int ret;

	priv = FUNC1(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC3(&priv->clk_lock);

	card->dev = &pdev->dev;
	FUNC4(card, priv);

	ret = FUNC2(&pdev->dev, card);
	if (ret)
		FUNC0(&pdev->dev, "failed to register card: %d\n", ret);

	return ret;
}