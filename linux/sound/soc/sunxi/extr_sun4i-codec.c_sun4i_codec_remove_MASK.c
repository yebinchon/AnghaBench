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
struct sun4i_codec {int /*<<< orphan*/  clk_apb; scalar_t__ rst; } ;
struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_soc_card* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct sun4i_codec* FUNC3 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct snd_soc_card *card = FUNC1(pdev);
	struct sun4i_codec *scodec = FUNC3(card);

	FUNC4(card);
	if (scodec->rst)
		FUNC2(scodec->rst);
	FUNC0(scodec->clk_apb);

	return 0;
}