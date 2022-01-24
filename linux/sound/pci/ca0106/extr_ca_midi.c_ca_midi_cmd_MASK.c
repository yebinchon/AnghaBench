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
struct snd_ca_midi {scalar_t__ ack; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  (* get_dev_id_port ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  input_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_ca_midi*) ; 
 scalar_t__ FUNC1 (struct snd_ca_midi*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ca_midi*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ca_midi*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ca_midi*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct snd_ca_midi *midi, unsigned char cmd, int ack)
{
	unsigned long flags;
	int timeout, ok;

	FUNC6(&midi->input_lock, flags);
	FUNC4(midi, 0x00);
	/* ca_midi_clear_rx(midi); */

	FUNC3(midi, cmd);
	if (ack) {
		ok = 0;
		timeout = 10000;
		while (!ok && timeout-- > 0) {
			if (FUNC0(midi)) {
				if (FUNC1(midi) == midi->ack)
					ok = 1;
			}
		}
		if (!ok && FUNC1(midi) == midi->ack)
			ok = 1;
	} else {
		ok = 1;
	}
	FUNC7(&midi->input_lock, flags);
	if (!ok)
		FUNC5("ca_midi_cmd: 0x%x failed at 0x%x (status = 0x%x, data = 0x%x)!!!\n",
			   cmd,
			   midi->get_dev_id_port(midi->dev_id),
			   FUNC2(midi),
			   FUNC1(midi));
}