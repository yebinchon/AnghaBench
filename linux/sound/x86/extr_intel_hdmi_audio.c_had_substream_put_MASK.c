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
struct TYPE_2__ {int /*<<< orphan*/  substream_refcount; } ;
struct snd_intelhad {int /*<<< orphan*/  had_spinlock; TYPE_1__ stream_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct snd_intelhad *intelhaddata)
{
	unsigned long flags;

	FUNC0(&intelhaddata->had_spinlock, flags);
	intelhaddata->stream_info.substream_refcount--;
	FUNC1(&intelhaddata->had_spinlock, flags);
}