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
struct snd_rawmidi_substream {unsigned int number; TYPE_1__* rmidi; } ;
struct snd_dg00x {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_stream; } ;
struct TYPE_2__ {scalar_t__ device; struct snd_dg00x* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi_substream *substream,
				 int up)
{
	struct snd_dg00x *dg00x = substream->rmidi->private_data;
	unsigned int port;
	unsigned long flags;

	if (substream->rmidi->device == 0)
		port = substream->number;
	else
		port = 2;

	FUNC1(&dg00x->lock, flags);

	if (up)
		FUNC0(&dg00x->tx_stream, port, substream);
	else
		FUNC0(&dg00x->tx_stream, port, NULL);

	FUNC2(&dg00x->lock, flags);
}