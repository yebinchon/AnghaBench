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
struct snd_rawmidi {int dummy; } ;
struct ensoniq {int uartm; unsigned char uartc; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  midi_output; int /*<<< orphan*/  midi_input; struct snd_rawmidi* rmidi; } ;

/* Variables and functions */
 int ES_MODE_INPUT ; 
 int ES_MODE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 unsigned char ES_RXRDY ; 
 unsigned char ES_TXINTENM ; 
 unsigned char ES_TXRDY ; 
 int /*<<< orphan*/  UART_CONTROL ; 
 int /*<<< orphan*/  UART_DATA ; 
 int /*<<< orphan*/  UART_STATUS ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ensoniq * ensoniq)
{
	struct snd_rawmidi *rmidi = ensoniq->rmidi;
	unsigned char status, mask, byte;

	if (rmidi == NULL)
		return;
	/* do Rx at first */
	FUNC5(&ensoniq->reg_lock);
	mask = ensoniq->uartm & ES_MODE_INPUT ? ES_RXRDY : 0;
	while (mask) {
		status = FUNC1(FUNC0(ensoniq, UART_STATUS));
		if ((status & mask) == 0)
			break;
		byte = FUNC1(FUNC0(ensoniq, UART_DATA));
		FUNC3(ensoniq->midi_input, &byte, 1);
	}
	FUNC6(&ensoniq->reg_lock);

	/* do Tx at second */
	FUNC5(&ensoniq->reg_lock);
	mask = ensoniq->uartm & ES_MODE_OUTPUT ? ES_TXRDY : 0;
	while (mask) {
		status = FUNC1(FUNC0(ensoniq, UART_STATUS));
		if ((status & mask) == 0)
			break;
		if (FUNC4(ensoniq->midi_output, &byte, 1) != 1) {
			ensoniq->uartc &= ~ES_TXINTENM;
			FUNC2(ensoniq->uartc, FUNC0(ensoniq, UART_CONTROL));
			mask &= ~ES_TXRDY;
		} else {
			FUNC2(byte, FUNC0(ensoniq, UART_DATA));
		}
	}
	FUNC6(&ensoniq->reg_lock);
}