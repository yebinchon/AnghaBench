#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct es1968 {TYPE_1__* card; scalar_t__ io_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ESM_AC97_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct es1968 *chip)
{
	int timeout = 100000;

	while (timeout-- > 0) {
		if (!(FUNC1(chip->io_port + ESM_AC97_INDEX) & 1))
			return 0;
	}
	FUNC0(chip->card->dev, "ac97 timeout\n");
	return 1; /* timeout */
}