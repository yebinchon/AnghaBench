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
struct snd_ca_midi {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_ca_midi*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ca_midi*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ca_midi*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_ca_midi *midi)
{
	int timeout = 100000;
	for (; timeout > 0 && FUNC0(midi); timeout--)
		FUNC1(midi);
#ifdef CONFIG_SND_DEBUG
	if (timeout <= 0)
		pr_err("ca_midi_clear_rx: timeout (status = 0x%x)\n",
			   ca_midi_read_stat(midi));
#endif
}