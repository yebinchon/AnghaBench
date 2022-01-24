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
struct snd_rawmidi_substream {int /*<<< orphan*/  runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi_substream*,int /*<<< orphan*/ ) ; 

int FUNC2(struct snd_rawmidi_substream *substream)
{
	FUNC1(substream, 0);
	FUNC0(substream->runtime, false);
	return 0;
}