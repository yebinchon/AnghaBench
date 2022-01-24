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
struct amdtp_stream {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct amdtp_stream *s)
{
	/*
	 * Process isochronous packets for recent isochronous cycle to handle
	 * queued PCM frames.
	 */
	if (FUNC0(s))
		FUNC1(s->context);

	return 0;
}