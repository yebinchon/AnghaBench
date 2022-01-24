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
struct snd_card {struct aaci* private_data; } ;
struct amba_device {int dummy; } ;
struct aaci {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AACI_MAINCR ; 
 struct snd_card* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct amba_device *dev)
{
	struct snd_card *card = FUNC0(dev);

	if (card) {
		struct aaci *aaci = card->private_data;
		FUNC3(0, aaci->base + AACI_MAINCR);

		FUNC2(card);
		FUNC1(dev);
	}

	return 0;
}