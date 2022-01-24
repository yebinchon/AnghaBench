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
struct snd_virmidi {int /*<<< orphan*/  parser; int /*<<< orphan*/  output_work; int /*<<< orphan*/  trigger; } ;
struct snd_rawmidi_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct snd_virmidi* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_virmidi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	struct snd_virmidi *vmidi = substream->runtime->private_data;

	FUNC0(vmidi->trigger, false); /* to be sure */
	FUNC1(&vmidi->output_work);
	FUNC3(vmidi->parser);
	substream->runtime->private_data = NULL;
	FUNC2(vmidi);
	return 0;
}