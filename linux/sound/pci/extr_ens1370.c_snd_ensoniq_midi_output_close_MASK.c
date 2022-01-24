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
struct ensoniq {int uartm; int uartc; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * midi_output; int /*<<< orphan*/  ctrl; } ;
struct TYPE_2__ {struct ensoniq* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int ES_MODE_INPUT ; 
 int ES_MODE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int ES_TXINTENM ; 
 int /*<<< orphan*/  ES_UART_EN ; 
 int /*<<< orphan*/  UART_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_rawmidi_substream *substream)
{
	struct ensoniq *ensoniq = substream->rmidi->private_data;

	FUNC3(&ensoniq->reg_lock);
	if (!(ensoniq->uartm & ES_MODE_INPUT)) {
		FUNC1(ensoniq->uartc = 0, FUNC0(ensoniq, UART_CONTROL));
		FUNC2(ensoniq->ctrl &= ~ES_UART_EN, FUNC0(ensoniq, CONTROL));
	} else {
		FUNC1(ensoniq->uartc &= ~ES_TXINTENM, FUNC0(ensoniq, UART_CONTROL));
	}
	ensoniq->midi_output = NULL;
	ensoniq->uartm &= ~ES_MODE_OUTPUT;
	FUNC4(&ensoniq->reg_lock);
	return 0;
}