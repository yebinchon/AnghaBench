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
struct pipe_inode_info {int nrbufs; int buffers; int curbuf; struct pipe_buffer* bufs; int /*<<< orphan*/  writers; int /*<<< orphan*/  readers; } ;
struct pipe_buffer {size_t len; size_t offset; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int EPIPE ; 
 int /*<<< orphan*/  PIPE_BUF_FLAG_GIFT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 unsigned int SPLICE_F_NONBLOCK ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (struct pipe_inode_info*,unsigned int) ; 
 int FUNC1 (struct pipe_inode_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe_inode_info*,struct pipe_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct pipe_inode_info*,struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct pipe_inode_info*) ; 

__attribute__((used)) static int FUNC9(struct pipe_inode_info *ipipe,
			       struct pipe_inode_info *opipe,
			       size_t len, unsigned int flags)
{
	struct pipe_buffer *ibuf, *obuf;
	int ret = 0, nbuf;
	bool input_wakeup = false;


retry:
	ret = FUNC0(ipipe, flags);
	if (ret)
		return ret;

	ret = FUNC1(opipe, flags);
	if (ret)
		return ret;

	/*
	 * Potential ABBA deadlock, work around it by ordering lock
	 * grabbing by pipe info address. Otherwise two different processes
	 * could deadlock (one doing tee from A -> B, the other from B -> A).
	 */
	FUNC4(ipipe, opipe);

	do {
		if (!opipe->readers) {
			FUNC6(SIGPIPE, current, 0);
			if (!ret)
				ret = -EPIPE;
			break;
		}

		if (!ipipe->nrbufs && !ipipe->writers)
			break;

		/*
		 * Cannot make any progress, because either the input
		 * pipe is empty or the output pipe is full.
		 */
		if (!ipipe->nrbufs || opipe->nrbufs >= opipe->buffers) {
			/* Already processed some buffers, break */
			if (ret)
				break;

			if (flags & SPLICE_F_NONBLOCK) {
				ret = -EAGAIN;
				break;
			}

			/*
			 * We raced with another reader/writer and haven't
			 * managed to process any buffers.  A zero return
			 * value means EOF, so retry instead.
			 */
			FUNC5(ipipe);
			FUNC5(opipe);
			goto retry;
		}

		ibuf = ipipe->bufs + ipipe->curbuf;
		nbuf = (opipe->curbuf + opipe->nrbufs) & (opipe->buffers - 1);
		obuf = opipe->bufs + nbuf;

		if (len >= ibuf->len) {
			/*
			 * Simply move the whole buffer from ipipe to opipe
			 */
			*obuf = *ibuf;
			ibuf->ops = NULL;
			opipe->nrbufs++;
			ipipe->curbuf = (ipipe->curbuf + 1) & (ipipe->buffers - 1);
			ipipe->nrbufs--;
			input_wakeup = true;
		} else {
			/*
			 * Get a reference to this pipe buffer,
			 * so we can copy the contents over.
			 */
			if (!FUNC2(ipipe, ibuf)) {
				if (ret == 0)
					ret = -EFAULT;
				break;
			}
			*obuf = *ibuf;

			/*
			 * Don't inherit the gift flag, we need to
			 * prevent multiple steals of this page.
			 */
			obuf->flags &= ~PIPE_BUF_FLAG_GIFT;

			FUNC3(obuf);

			obuf->len = len;
			opipe->nrbufs++;
			ibuf->offset += obuf->len;
			ibuf->len -= obuf->len;
		}
		ret += obuf->len;
		len -= obuf->len;
	} while (len);

	FUNC5(ipipe);
	FUNC5(opipe);

	/*
	 * If we put data in the output pipe, wakeup any potential readers.
	 */
	if (ret > 0)
		FUNC7(opipe);

	if (input_wakeup)
		FUNC8(ipipe);

	return ret;
}