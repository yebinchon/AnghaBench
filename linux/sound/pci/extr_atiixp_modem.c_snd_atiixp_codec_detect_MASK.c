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
struct atiixp_modem {int codec_not_ready_bits; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ALL_CODEC_NOT_READY ; 
 int /*<<< orphan*/  CODEC_CHECK_BITS ; 
 int ENXIO ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  FUNC0 (struct atiixp_modem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct atiixp_modem *chip)
{
	int timeout;

	chip->codec_not_ready_bits = 0;
	FUNC0(chip, IER, CODEC_CHECK_BITS);
	/* wait for the interrupts */
	timeout = 50;
	while (timeout-- > 0) {
		FUNC2(1);
		if (chip->codec_not_ready_bits)
			break;
	}
	FUNC0(chip, IER, 0); /* disable irqs */

	if ((chip->codec_not_ready_bits & ALL_CODEC_NOT_READY) == ALL_CODEC_NOT_READY) {
		FUNC1(chip->card->dev, "no codec detected!\n");
		return -ENXIO;
	}
	return 0;
}