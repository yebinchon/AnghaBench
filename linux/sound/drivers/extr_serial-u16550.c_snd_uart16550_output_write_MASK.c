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
struct snd_uart16550 {scalar_t__ irq; scalar_t__ adaptor; int buff_in_count; int prev_out; unsigned char* prev_status; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  drop_on_full; } ;
struct snd_rawmidi_substream {int number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_uart16550* private_data; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ SNDRV_SERIAL_GENERIC ; 
 scalar_t__ SNDRV_SERIAL_MS124W_MB ; 
 scalar_t__ SNDRV_SERIAL_SOUNDCANVAS ; 
 int TX_BUFF_SIZE ; 
 unsigned long jiffies ; 
 int FUNC0 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi_substream*,int) ; 
 int FUNC2 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 scalar_t__ FUNC3 (struct snd_uart16550*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_uart16550*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_uart16550*,struct snd_rawmidi_substream*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct snd_rawmidi_substream *substream)
{
	unsigned long flags;
	unsigned char midi_byte, addr_byte;
	struct snd_uart16550 *uart = substream->rmidi->private_data;
	char first;
	static unsigned long lasttime = 0;
	
	/* Interrupts are disabled during the updating of the tx_buff,
	 * since it is 'bad' to have two processes updating the same
	 * variables (ie buff_in & buff_out)
	 */

	FUNC6(&uart->open_lock, flags);

	if (uart->irq < 0)	/* polling */
		FUNC4(uart);

	if (uart->adaptor == SNDRV_SERIAL_MS124W_MB) {
		while (1) {
			/* buffer full? */
			/* in this mode we need two bytes of space */
			if (uart->buff_in_count > TX_BUFF_SIZE - 2)
				break;
			if (FUNC0(substream, &midi_byte, 1) != 1)
				break;
#ifdef SNDRV_SERIAL_MS124W_MB_NOCOMBO
			/* select exactly one of the four ports */
			addr_byte = (1 << (substream->number + 4)) | 0x08;
#else
			/* select any combination of the four ports */
			addr_byte = (substream->number << 4) | 0x08;
			/* ...except none */
			if (addr_byte == 0x08)
				addr_byte = 0xf8;
#endif
			FUNC5(uart, substream, addr_byte);
			/* send midi byte */
			FUNC5(uart, substream, midi_byte);
		}
	} else {
		first = 0;
		while (FUNC2(substream, &midi_byte, 1) == 1) {
			/* Also send F5 after 3 seconds with no data
			 * to handle device disconnect */
			if (first == 0 &&
			    (uart->adaptor == SNDRV_SERIAL_SOUNDCANVAS ||
			     uart->adaptor == SNDRV_SERIAL_GENERIC) &&
			    (uart->prev_out != substream->number ||
			     FUNC8(jiffies, lasttime + 3*HZ))) {

				if (FUNC3(uart, 3)) {
					/* Roland Soundcanvas part selection */
					/* If this substream of the data is
					 * different previous substream
					 * in this uart, send the change part
					 * event
					 */
					uart->prev_out = substream->number;
					/* change part */
					FUNC5(uart, substream,
								  0xf5);
					/* data */
					FUNC5(uart, substream,
								  uart->prev_out + 1);
					/* If midi_byte is a data byte,
					 * send the previous status byte */
					if (midi_byte < 0x80 &&
					    uart->adaptor == SNDRV_SERIAL_SOUNDCANVAS)
						FUNC5(uart, substream, uart->prev_status[uart->prev_out]);
				} else if (!uart->drop_on_full)
					break;

			}

			/* send midi byte */
			if (!FUNC5(uart, substream, midi_byte) &&
			    !uart->drop_on_full )
				break;

			if (midi_byte >= 0x80 && midi_byte < 0xf0)
				uart->prev_status[uart->prev_out] = midi_byte;
			first = 1;

			FUNC1( substream, 1 );
		}
		lasttime = jiffies;
	}
	FUNC7(&uart->open_lock, flags);
}