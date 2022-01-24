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
struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;
struct byt_cht_es8316_private {int /*<<< orphan*/  speaker_en_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_soc_card* FUNC1 (struct platform_device*) ; 
 struct byt_cht_es8316_private* FUNC2 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct snd_soc_card *card = FUNC1(pdev);
	struct byt_cht_es8316_private *priv = FUNC2(card);

	FUNC0(priv->speaker_en_gpio);
	return 0;
}