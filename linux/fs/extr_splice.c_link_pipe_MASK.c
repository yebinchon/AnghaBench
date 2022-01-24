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
struct pipe_inode_info {int nrbufs; int buffers; int curbuf; scalar_t__ waiting_writers; struct pipe_buffer* bufs; int /*<<< orphan*/  readers; } ;
struct pipe_buffer {size_t len; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int EPIPE ; 
 int /*<<< orphan*/  PIPE_BUF_FLAG_GIFT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 unsigned int SPLICE_F_NONBLOCK ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct pipe_inode_info*,struct pipe_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe_inode_info*,struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pipe_inode_info*) ; 

__attribute__((used)) static int FUNC6(struct pipe_inode_info *ipipe,
		     struct pipe_inode_info *opipe,
		     size_t len, unsigned int flags)
{
	struct pipe_buffer *ibuf, *obuf;
	int ret = 0, i = 0, nbuf;

	/*
	 * Potential ABBA deadlock, work around it by ordering lock
	 * grabbing by pipe info address. Otherwise two different processes
	 * could deadlock (one doing tee from A -> B, the other from B -> A).
	 */
	FUNC2(ipipe, opipe);

	do {
		if (!opipe->readers) {
			FUNC4(SIGPIPE, current, 0);
			if (!ret)
				ret = -EPIPE;
			break;
		}

		/*
		 * If we have iterated all input buffers or ran out of
		 * output room, break.
		 */
		if (i >= ipipe->nrbufs || opipe->nrbufs >= opipe->buffers)
			break;

		ibuf = ipipe->bufs + ((ipipe->curbuf + i) & (ipipe->buffers-1));
		nbuf = (opipe->curbuf + opipe->nrbufs) & (opipe->buffers - 1);

		/*
		 * Get a reference to this pipe buffer,
		 * so we can copy the contents over.
		 */
		if (!FUNC0(ipipe, ibuf)) {
			if (ret == 0)
				ret = -EFAULT;
			break;
		}

		obuf = opipe->bufs + nbuf;
		*obuf = *ibuf;

		/*
		 * Don't inherit the gift flag, we need to
		 * prevent multiple steals of this page.
		 */
		obuf->flags &= ~PIPE_BUF_FLAG_GIFT;

		FUNC1(obuf);

		if (obuf->len > len)
			obuf->len = len;

		opipe->nrbufs++;
		ret += obuf->len;
		len -= obuf->len;
		i++;
	} while (len);

	/*
	 * return EAGAIN if we have the potential of some data in the
	 * future, otherwise just return 0
	 */
	if (!ret && ipipe->waiting_writers && (flags & SPLICE_F_NONBLOCK))
		ret = -EAGAIN;

	FUNC3(ipipe);
	FUNC3(opipe);

	/*
	 * If we put data in the output pipe, wakeup any potential readers.
	 */
	if (ret > 0)
		FUNC5(opipe);

	return ret;
}