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
struct ensoniq {int uartm; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  ctrl; scalar_t__ uartc; struct snd_rawmidi_substream* midi_input; } ;
struct TYPE_2__ {struct ensoniq* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 scalar_t__ FUNC0 (int) ; 
 int ES_MODE_INPUT ; 
 int ES_MODE_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ES_UART_EN ; 
 int /*<<< orphan*/  UART_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_rawmidi_substream *substream)
{
	struct ensoniq *ensoniq = substream->rmidi->private_data;

	FUNC4(&ensoniq->reg_lock);
	ensoniq->uartm |= ES_MODE_INPUT;
	ensoniq->midi_input = substream;
	if (!(ensoniq->uartm & ES_MODE_OUTPUT)) {
		FUNC2(FUNC0(3), FUNC1(ensoniq, UART_CONTROL));
		FUNC2(ensoniq->uartc = 0, FUNC1(ensoniq, UART_CONTROL));
		FUNC3(ensoniq->ctrl |= ES_UART_EN, FUNC1(ensoniq, CONTROL));
	}
	FUNC5(&ensoniq->reg_lock);
	return 0;
}