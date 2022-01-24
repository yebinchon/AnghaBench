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
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  substream_refcount; struct snd_pcm_substream* substream; } ;
struct snd_intelhad {int /*<<< orphan*/  had_spinlock; TYPE_1__ stream_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct snd_pcm_substream *
FUNC2(struct snd_intelhad *intelhaddata)
{
	struct snd_pcm_substream *substream;
	unsigned long flags;

	FUNC0(&intelhaddata->had_spinlock, flags);
	substream = intelhaddata->stream_info.substream;
	if (substream)
		intelhaddata->stream_info.substream_refcount++;
	FUNC1(&intelhaddata->had_spinlock, flags);
	return substream;
}