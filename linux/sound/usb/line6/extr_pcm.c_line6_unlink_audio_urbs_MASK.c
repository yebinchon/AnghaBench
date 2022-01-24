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
struct snd_line6_pcm {TYPE_1__* line6; } ;
struct line6_pcm_stream {int /*<<< orphan*/ * urbs; int /*<<< orphan*/  unlink_urbs; int /*<<< orphan*/  active_urbs; } ;
struct TYPE_2__ {int iso_buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_line6_pcm *line6pcm,
				    struct line6_pcm_stream *pcms)
{
	int i;

	for (i = 0; i < line6pcm->line6->iso_buffers; i++) {
		if (FUNC1(i, &pcms->active_urbs)) {
			if (!FUNC0(i, &pcms->unlink_urbs))
				FUNC2(pcms->urbs[i]);
		}
	}
}