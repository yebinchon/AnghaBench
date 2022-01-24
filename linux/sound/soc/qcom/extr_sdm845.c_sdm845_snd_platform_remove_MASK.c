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
struct snd_soc_card {struct snd_soc_card* dai_link; } ;
struct sdm845_snd_data {struct sdm845_snd_data* dai_link; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct snd_soc_card* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_card*) ; 
 struct snd_soc_card* FUNC2 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct snd_soc_card *card = FUNC0(&pdev->dev);
	struct sdm845_snd_data *data = FUNC2(card);

	FUNC3(card);
	FUNC1(card->dai_link);
	FUNC1(data);
	FUNC1(card);
	return 0;
}