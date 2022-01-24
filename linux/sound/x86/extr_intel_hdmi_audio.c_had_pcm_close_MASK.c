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
struct TYPE_2__ {scalar_t__ substream_refcount; int /*<<< orphan*/ * substream; } ;
struct snd_intelhad {int /*<<< orphan*/  dev; int /*<<< orphan*/  had_spinlock; TYPE_1__ stream_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct snd_intelhad* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_intelhad *intelhaddata;

	intelhaddata = FUNC3(substream);

	/* unreference and sync with the pending PCM accesses */
	FUNC4(&intelhaddata->had_spinlock);
	intelhaddata->stream_info.substream = NULL;
	intelhaddata->stream_info.substream_refcount--;
	while (intelhaddata->stream_info.substream_refcount > 0) {
		FUNC5(&intelhaddata->had_spinlock);
		FUNC0();
		FUNC4(&intelhaddata->had_spinlock);
	}
	FUNC5(&intelhaddata->had_spinlock);

	FUNC1(intelhaddata->dev);
	FUNC2(intelhaddata->dev);
	return 0;
}