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
struct sender_context {unsigned int num_packets; int* in_fds; int ready_out; int wakefd; int* out_fds; unsigned int num_fds; } ;
struct receiver_context {unsigned int num_packets; int* in_fds; int ready_out; int wakefd; int* out_fds; unsigned int num_fds; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sender_context*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 struct sender_context* FUNC4 (int) ; 
 unsigned int nr_loops ; 
 scalar_t__ receiver ; 
 scalar_t__ sender ; 
 int /*<<< orphan*/  thread_mode ; 

__attribute__((used)) static unsigned int FUNC5(pthread_t *pth,
		unsigned int num_fds,
		int ready_out,
		int wakefd)
{
	unsigned int i;
	struct sender_context *snd_ctx = FUNC4(sizeof(struct sender_context)
			+ num_fds * sizeof(int));

	if (!snd_ctx)
		FUNC2(EXIT_FAILURE, "malloc()");

	for (i = 0; i < num_fds; i++) {
		int fds[2];
		struct receiver_context *ctx = FUNC4(sizeof(*ctx));

		if (!ctx)
			FUNC2(EXIT_FAILURE, "malloc()");


		/* Create the pipe between client and server */
		FUNC3(fds);

		ctx->num_packets = num_fds * nr_loops;
		ctx->in_fds[0] = fds[0];
		ctx->in_fds[1] = fds[1];
		ctx->ready_out = ready_out;
		ctx->wakefd = wakefd;

		pth[i] = FUNC1(ctx, (void *)receiver);

		snd_ctx->out_fds[i] = fds[1];
		if (!thread_mode)
			FUNC0(fds[0]);
	}

	/* Now we have all the fds, fork the senders */
	for (i = 0; i < num_fds; i++) {
		snd_ctx->ready_out = ready_out;
		snd_ctx->wakefd = wakefd;
		snd_ctx->num_fds = num_fds;

		pth[num_fds+i] = FUNC1(snd_ctx, (void *)sender);
	}

	/* Close the fds we have left */
	if (!thread_mode)
		for (i = 0; i < num_fds; i++)
			FUNC0(snd_ctx->out_fds[i]);

	/* Return number of children to reap */
	return num_fds * 2;
}