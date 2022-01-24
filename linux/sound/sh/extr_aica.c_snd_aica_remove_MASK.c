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
struct snd_card_aica {int /*<<< orphan*/  card; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct snd_card_aica*) ; 
 struct snd_card_aica* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct platform_device *devptr)
{
	struct snd_card_aica *dreamcastcard;
	dreamcastcard = FUNC1(devptr);
	if (FUNC3(!dreamcastcard))
		return -ENODEV;
	FUNC2(dreamcastcard->card);
	FUNC0(dreamcastcard);
	return 0;
}