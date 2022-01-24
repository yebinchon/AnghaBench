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
struct amdtp_stream {int packet_index; int /*<<< orphan*/  pcm_buffer_pointer; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_POS_XRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdtp_stream*) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct amdtp_stream *s)
{
	s->packet_index = -1;
	if (FUNC2())
		FUNC1(s);
	FUNC0(s->pcm_buffer_pointer, SNDRV_PCM_POS_XRUN);
}