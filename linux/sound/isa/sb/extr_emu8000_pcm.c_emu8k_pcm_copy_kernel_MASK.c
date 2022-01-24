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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_emu8k_pcm {int dummy; } ;
struct TYPE_2__ {struct snd_emu8k_pcm* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  COPY_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu8k_pcm*,unsigned long,void*,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (TYPE_1__*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *subs,
				 int voice, unsigned long pos,
				 void *src, unsigned long count)
{
	struct snd_emu8k_pcm *rec = subs->runtime->private_data;

	/* convert to frames */
	pos = FUNC1(subs->runtime, pos);
	count = FUNC1(subs->runtime, count);
	FUNC0(rec, pos, src, count, COPY_KERNEL);
	return 0;
}