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
struct imx_sgtl5000_data {int /*<<< orphan*/  codec_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_soc_card* FUNC1 (struct platform_device*) ; 
 struct imx_sgtl5000_data* FUNC2 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct snd_soc_card *card = FUNC1(pdev);
	struct imx_sgtl5000_data *data = FUNC2(card);

	FUNC0(data->codec_clk);

	return 0;
}