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
struct platform_device_id {size_t driver_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct snd_soc_card** db1200_cards ; 
 int FUNC0 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 
 struct platform_device_id* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	const struct platform_device_id *pid = FUNC1(pdev);
	struct snd_soc_card *card;

	card = db1200_cards[pid->driver_data];
	card->dev = &pdev->dev;
	return FUNC0(&pdev->dev, card);
}