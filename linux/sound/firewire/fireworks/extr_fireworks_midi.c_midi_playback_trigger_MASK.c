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
struct snd_rawmidi_substream {int /*<<< orphan*/  number; TYPE_1__* rmidi; } ;
struct snd_efw {int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_stream; } ;
struct TYPE_2__ {struct snd_efw* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi_substream *substrm, int up)
{
	struct snd_efw *efw = substrm->rmidi->private_data;
	unsigned long flags;

	FUNC1(&efw->lock, flags);

	if (up)
		FUNC0(&efw->rx_stream,
					 substrm->number, substrm);
	else
		FUNC0(&efw->rx_stream,
					 substrm->number, NULL);

	FUNC2(&efw->lock, flags);
}