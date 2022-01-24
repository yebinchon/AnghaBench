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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct ensoniq {unsigned char uartc; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {struct ensoniq* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char) ; 
 unsigned char ES_TXINTENM ; 
 unsigned char FUNC2 (int) ; 
 int ES_TXRDY ; 
 int /*<<< orphan*/  UART_CONTROL ; 
 int /*<<< orphan*/  UART_DATA ; 
 int /*<<< orphan*/  UART_STATUS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct snd_rawmidi_substream *substream, int up)
{
	unsigned long flags;
	struct ensoniq *ensoniq = substream->rmidi->private_data;
	unsigned char byte;

	FUNC6(&ensoniq->reg_lock, flags);
	if (up) {
		if (FUNC1(ensoniq->uartc) == 0) {
			ensoniq->uartc |= FUNC2(1);
			/* fill UART FIFO buffer at first, and turn Tx interrupts only if necessary */
			while (FUNC1(ensoniq->uartc) == 1 &&
			       (FUNC3(FUNC0(ensoniq, UART_STATUS)) & ES_TXRDY)) {
				if (FUNC5(substream, &byte, 1) != 1) {
					ensoniq->uartc &= ~ES_TXINTENM;
				} else {
					FUNC4(byte, FUNC0(ensoniq, UART_DATA));
				}
			}
			FUNC4(ensoniq->uartc, FUNC0(ensoniq, UART_CONTROL));
		}
	} else {
		if (FUNC1(ensoniq->uartc) == 1) {
			ensoniq->uartc &= ~ES_TXINTENM;
			FUNC4(ensoniq->uartc, FUNC0(ensoniq, UART_CONTROL));
		}
	}
	FUNC7(&ensoniq->reg_lock, flags);
}