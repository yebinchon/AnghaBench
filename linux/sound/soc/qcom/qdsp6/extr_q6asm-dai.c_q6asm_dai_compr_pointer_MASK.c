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
struct snd_compr_tstamp {int copied_total; int byte_offset; } ;
struct snd_compr_stream {struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct q6asm_dai_rtd* private_data; } ;
struct q6asm_dai_rtd {int copied_total; int pcm_size; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct snd_compr_stream *stream,
		struct snd_compr_tstamp *tstamp)
{
	struct snd_compr_runtime *runtime = stream->runtime;
	struct q6asm_dai_rtd *prtd = runtime->private_data;
	unsigned long flags;

	FUNC0(&prtd->lock, flags);

	tstamp->copied_total = prtd->copied_total;
	tstamp->byte_offset = prtd->copied_total % prtd->pcm_size;

	FUNC1(&prtd->lock, flags);

	return 0;
}