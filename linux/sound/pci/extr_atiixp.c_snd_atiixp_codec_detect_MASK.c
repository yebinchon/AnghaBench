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
struct atiixp {int codec_not_ready_bits; TYPE_1__* card; int /*<<< orphan*/  pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ALL_CODEC_NOT_READY ; 
 int CODEC_CHECK_BITS ; 
 int ENXIO ; 
 int /*<<< orphan*/  IER ; 
 int ac97_codec ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct atiixp *chip)
{
	int timeout;

	chip->codec_not_ready_bits = 0;
	if (ac97_codec == -1)
		ac97_codec = FUNC0(chip->pci);
	if (ac97_codec >= 0) {
		chip->codec_not_ready_bits |= 
			CODEC_CHECK_BITS ^ (1 << (ac97_codec + 10));
		return 0;
	}

	FUNC1(chip, IER, CODEC_CHECK_BITS);
	/* wait for the interrupts */
	timeout = 50;
	while (timeout-- > 0) {
		FUNC3(1);
		if (chip->codec_not_ready_bits)
			break;
	}
	FUNC1(chip, IER, 0); /* disable irqs */

	if ((chip->codec_not_ready_bits & ALL_CODEC_NOT_READY) == ALL_CODEC_NOT_READY) {
		FUNC2(chip->card->dev, "no codec detected!\n");
		return -ENXIO;
	}
	return 0;
}