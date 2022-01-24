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
struct snd_rawmidi_substream {int dummy; } ;
struct snd_fw_async_midi_port {int error; int idling; int /*<<< orphan*/  work; scalar_t__ next_ktime; int /*<<< orphan*/  consume_bytes; int /*<<< orphan*/  substream; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int RCODE_COMPLETE ; 
 struct snd_rawmidi_substream* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_rawmidi_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rawmidi_substream*) ; 

__attribute__((used)) static void FUNC5(struct fw_card *card, int rcode,
				     void *data, size_t length,
				     void *callback_data)
{
	struct snd_fw_async_midi_port *port = callback_data;
	struct snd_rawmidi_substream *substream = FUNC0(port->substream);

	/* This port is closed. */
	if (substream == NULL)
		return;

	if (rcode == RCODE_COMPLETE)
		FUNC3(substream, port->consume_bytes);
	else if (!FUNC1(rcode))
		/* To start next transaction immediately for recovery. */
		port->next_ktime = 0;
	else
		/* Don't continue processing. */
		port->error = true;

	port->idling = true;

	if (!FUNC4(substream))
		FUNC2(&port->work);
}