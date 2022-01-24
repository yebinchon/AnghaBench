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
struct snd_wss {scalar_t__ capture_substream; scalar_t__ playback_substream; } ;
struct snd_opti9xx {struct snd_wss* codec; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned char OPTi93X_IRQ_CAPTURE ; 
 unsigned char OPTi93X_IRQ_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_wss*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (struct snd_opti9xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_wss*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct snd_opti9xx *chip = dev_id;
	struct snd_wss *codec = chip->codec;
	unsigned char status;

	if (!codec)
		return IRQ_HANDLED;

	status = FUNC3(chip, FUNC1(11));
	if ((status & OPTi93X_IRQ_PLAYBACK) && codec->playback_substream)
		FUNC4(codec->playback_substream);
	if ((status & OPTi93X_IRQ_CAPTURE) && codec->capture_substream) {
		FUNC5(codec);
		FUNC4(codec->capture_substream);
	}
	FUNC2(0x00, FUNC0(codec, STATUS));
	return IRQ_HANDLED;
}