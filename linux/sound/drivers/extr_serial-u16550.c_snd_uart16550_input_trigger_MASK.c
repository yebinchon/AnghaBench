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
struct snd_uart16550 {int /*<<< orphan*/  open_lock; int /*<<< orphan*/  filemode; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_uart16550* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERIAL_MODE_INPUT_TRIGGERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct snd_rawmidi_substream *substream,
					int up)
{
	unsigned long flags;
	struct snd_uart16550 *uart = substream->rmidi->private_data;

	FUNC0(&uart->open_lock, flags);
	if (up)
		uart->filemode |= SERIAL_MODE_INPUT_TRIGGERED;
	else
		uart->filemode &= ~SERIAL_MODE_INPUT_TRIGGERED;
	FUNC1(&uart->open_lock, flags);
}