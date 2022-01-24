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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_V253 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct snd_soc_card* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_card*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct snd_soc_card *card = FUNC1(pdev);

	if (FUNC3(N_V253) != 0)
		FUNC0(&pdev->dev,
			"failed to unregister V253 line discipline\n");

	FUNC2(card);
	card->dev = NULL;
	return 0;
}