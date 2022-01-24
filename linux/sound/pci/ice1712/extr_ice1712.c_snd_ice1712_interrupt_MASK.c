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
typedef  int u32 ;
typedef  int u16 ;
struct snd_pcm_substream {int dummy; } ;
struct snd_ice1712 {struct snd_pcm_substream* playback_con_substream; struct snd_pcm_substream* capture_con_substream; struct snd_pcm_substream** playback_con_substream_ds; struct snd_pcm_substream* capture_pro_substream; struct snd_pcm_substream* playback_pro_substream; TYPE_1__** rmidi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 unsigned char ICE1712_IRQ_CONCAP ; 
 unsigned char ICE1712_IRQ_CONPBK ; 
 unsigned char ICE1712_IRQ_FM ; 
 unsigned char ICE1712_IRQ_MPU1 ; 
 unsigned char ICE1712_IRQ_MPU2 ; 
 unsigned char ICE1712_IRQ_PBKDS ; 
 unsigned char ICE1712_IRQ_PROPCM ; 
 unsigned char ICE1712_IRQ_TIMER ; 
 unsigned char ICE1712_MULTI_CAPSTATUS ; 
 unsigned char ICE1712_MULTI_PBKSTATUS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTSTAT ; 
 int /*<<< orphan*/  IRQ ; 
 int /*<<< orphan*/  IRQSTAT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_substream*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct snd_ice1712 *ice = dev_id;
	unsigned char status;
	int handled = 0;

	while (1) {
		status = FUNC4(FUNC2(ice, IRQSTAT));
		if (status == 0)
			break;
		handled = 1;
		if (status & ICE1712_IRQ_MPU1) {
			if (ice->rmidi[0])
				FUNC8(irq, ice->rmidi[0]->private_data);
			FUNC6(ICE1712_IRQ_MPU1, FUNC2(ice, IRQSTAT));
			status &= ~ICE1712_IRQ_MPU1;
		}
		if (status & ICE1712_IRQ_TIMER)
			FUNC6(ICE1712_IRQ_TIMER, FUNC2(ice, IRQSTAT));
		if (status & ICE1712_IRQ_MPU2) {
			if (ice->rmidi[1])
				FUNC8(irq, ice->rmidi[1]->private_data);
			FUNC6(ICE1712_IRQ_MPU2, FUNC2(ice, IRQSTAT));
			status &= ~ICE1712_IRQ_MPU2;
		}
		if (status & ICE1712_IRQ_PROPCM) {
			unsigned char mtstat = FUNC4(FUNC1(ice, IRQ));
			if (mtstat & ICE1712_MULTI_PBKSTATUS) {
				if (ice->playback_pro_substream)
					FUNC9(ice->playback_pro_substream);
				FUNC6(ICE1712_MULTI_PBKSTATUS, FUNC1(ice, IRQ));
			}
			if (mtstat & ICE1712_MULTI_CAPSTATUS) {
				if (ice->capture_pro_substream)
					FUNC9(ice->capture_pro_substream);
				FUNC6(ICE1712_MULTI_CAPSTATUS, FUNC1(ice, IRQ));
			}
		}
		if (status & ICE1712_IRQ_FM)
			FUNC6(ICE1712_IRQ_FM, FUNC2(ice, IRQSTAT));
		if (status & ICE1712_IRQ_PBKDS) {
			u32 idx;
			u16 pbkstatus;
			struct snd_pcm_substream *substream;
			pbkstatus = FUNC5(FUNC0(ice, INTSTAT));
			/* dev_dbg(ice->card->dev, "pbkstatus = 0x%x\n", pbkstatus); */
			for (idx = 0; idx < 6; idx++) {
				if ((pbkstatus & (3 << (idx * 2))) == 0)
					continue;
				substream = ice->playback_con_substream_ds[idx];
				if (substream != NULL)
					FUNC9(substream);
				FUNC7(3 << (idx * 2), FUNC0(ice, INTSTAT));
			}
			FUNC6(ICE1712_IRQ_PBKDS, FUNC2(ice, IRQSTAT));
		}
		if (status & ICE1712_IRQ_CONCAP) {
			if (ice->capture_con_substream)
				FUNC9(ice->capture_con_substream);
			FUNC6(ICE1712_IRQ_CONCAP, FUNC2(ice, IRQSTAT));
		}
		if (status & ICE1712_IRQ_CONPBK) {
			if (ice->playback_con_substream)
				FUNC9(ice->playback_con_substream);
			FUNC6(ICE1712_IRQ_CONPBK, FUNC2(ice, IRQSTAT));
		}
	}
	return FUNC3(handled);
}