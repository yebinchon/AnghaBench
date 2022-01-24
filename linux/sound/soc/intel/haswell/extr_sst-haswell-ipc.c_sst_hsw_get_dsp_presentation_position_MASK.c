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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  presentation_position_register_address; } ;
struct sst_hsw_stream {TYPE_1__ reply; } ;
struct sst_hsw {int /*<<< orphan*/  dsp; } ;
typedef  int /*<<< orphan*/  ppos ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

u64 FUNC1(struct sst_hsw *hsw,
	struct sst_hsw_stream *stream)
{
	u64 ppos;

	FUNC0(hsw->dsp, &ppos,
		stream->reply.presentation_position_register_address,
		sizeof(ppos));

	return ppos;
}