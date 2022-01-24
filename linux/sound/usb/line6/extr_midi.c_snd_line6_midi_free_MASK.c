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
struct snd_rawmidi {struct snd_line6_midi* private_data; } ;
struct snd_line6_midi {int /*<<< orphan*/  midibuf_out; int /*<<< orphan*/  midibuf_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_line6_midi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct snd_rawmidi *rmidi)
{
	struct snd_line6_midi *line6midi = rmidi->private_data;

	FUNC1(&line6midi->midibuf_in);
	FUNC1(&line6midi->midibuf_out);
	FUNC0(line6midi);
}