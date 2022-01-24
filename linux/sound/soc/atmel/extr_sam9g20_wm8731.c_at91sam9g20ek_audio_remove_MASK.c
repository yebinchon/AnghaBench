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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mclk ; 
 struct snd_soc_card* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct snd_soc_card *card = FUNC2(pdev);

	FUNC1(mclk);
	mclk = NULL;
	FUNC3(card);
	FUNC0(0);

	return 0;
}