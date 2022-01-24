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
struct receiver_context {unsigned int num_packets; int /*<<< orphan*/ * in_fds; int /*<<< orphan*/  wakefd; int /*<<< orphan*/  ready_out; } ;

/* Variables and functions */
 int DATASIZE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_mode ; 

__attribute__((used)) static void *FUNC4(struct receiver_context* ctx)
{
	unsigned int i;

	if (!thread_mode)
		FUNC0(ctx->in_fds[1]);

	/* Wait for start... */
	FUNC3(ctx->ready_out, ctx->wakefd);

	/* Receive them all */
	for (i = 0; i < ctx->num_packets; i++) {
		char data[DATASIZE];
		int ret, done = 0;

again:
		ret = FUNC2(ctx->in_fds[0], data + done, DATASIZE - done);
		if (ret < 0)
			FUNC1(EXIT_FAILURE, "SERVER: read");
		done += ret;
		if (done < DATASIZE)
			goto again;
	}

	return NULL;
}