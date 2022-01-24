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
struct ensoniq {int uartc; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {struct ensoniq* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int ES_RXINTEN ; 
 int /*<<< orphan*/  UART_CONTROL ; 
 int /*<<< orphan*/  UART_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_rawmidi_substream *substream, int up)
{
	unsigned long flags;
	struct ensoniq *ensoniq = substream->rmidi->private_data;
	int idx;

	FUNC3(&ensoniq->reg_lock, flags);
	if (up) {
		if ((ensoniq->uartc & ES_RXINTEN) == 0) {
			/* empty input FIFO */
			for (idx = 0; idx < 32; idx++)
				FUNC1(FUNC0(ensoniq, UART_DATA));
			ensoniq->uartc |= ES_RXINTEN;
			FUNC2(ensoniq->uartc, FUNC0(ensoniq, UART_CONTROL));
		}
	} else {
		if (ensoniq->uartc & ES_RXINTEN) {
			ensoniq->uartc &= ~ES_RXINTEN;
			FUNC2(ensoniq->uartc, FUNC0(ensoniq, UART_CONTROL));
		}
	}
	FUNC4(&ensoniq->reg_lock, flags);
}