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
typedef  int /*<<< orphan*/  u8 ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPU_DATA ; 
 int /*<<< orphan*/  MPU_TXFIFO ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_OUTPUT ; 
 int /*<<< orphan*/  VT1724_IRQ_MPU_TX ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ,int) ; 
 struct snd_rawmidi_substream* FUNC2 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_rawmidi_substream*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_rawmidi_substream*) ; 

__attribute__((used)) static void FUNC7(struct snd_ice1712 *ice)
{
	struct snd_rawmidi_substream *s;
	int count, i;
	u8 buffer[32];

	s = FUNC2(ice, SNDRV_RAWMIDI_STREAM_OUTPUT);
	count = 31 - FUNC3(FUNC0(ice, MPU_TXFIFO));
	if (count > 0) {
		count = FUNC5(s, buffer, count);
		for (i = 0; i < count; ++i)
			FUNC4(buffer[i], FUNC0(ice, MPU_DATA));
	}
	/* mask irq when all bytes have been transmitted.
	 * enabled again in output_trigger when the new data comes in.
	 */
	FUNC1(ice, VT1724_IRQ_MPU_TX,
			!FUNC6(s));
}