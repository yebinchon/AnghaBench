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
struct snd_rawmidi_substream {int use_count; int active_sensing; int /*<<< orphan*/  runtime; scalar_t__ append; } ;
struct snd_rawmidi_params {int /*<<< orphan*/  no_active_sensing; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,struct snd_rawmidi_params*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi_substream*) ; 

int FUNC2(struct snd_rawmidi_substream *substream,
			      struct snd_rawmidi_params *params)
{
	if (substream->append && substream->use_count > 1)
		return -EBUSY;
	FUNC1(substream);
	substream->active_sensing = !params->no_active_sensing;
	return FUNC0(substream->runtime, params, false);
}