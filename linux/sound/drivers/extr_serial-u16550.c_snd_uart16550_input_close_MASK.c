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
struct snd_uart16550 {scalar_t__ filemode; int /*<<< orphan*/  open_lock; int /*<<< orphan*/ ** midi_input; } ;
struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_uart16550* private_data; } ;

/* Variables and functions */
 scalar_t__ SERIAL_MODE_INPUT_OPEN ; 
 scalar_t__ SERIAL_MODE_NOT_OPENED ; 
 int /*<<< orphan*/  FUNC0 (struct snd_uart16550*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_rawmidi_substream *substream)
{
	unsigned long flags;
	struct snd_uart16550 *uart = substream->rmidi->private_data;

	FUNC1(&uart->open_lock, flags);
	uart->filemode &= ~SERIAL_MODE_INPUT_OPEN;
	uart->midi_input[substream->number] = NULL;
	if (uart->filemode == SERIAL_MODE_NOT_OPENED)
		FUNC0(uart);
	FUNC2(&uart->open_lock, flags);
	return 0;
}