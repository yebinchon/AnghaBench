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
struct pipe_inode_info {int nrbufs; int curbuf; int buffers; int /*<<< orphan*/  fasync_readers; int /*<<< orphan*/  wait; int /*<<< orphan*/  waiting_writers; struct page* tmp_page; struct pipe_buffer* bufs; int /*<<< orphan*/  readers; } ;
struct pipe_buffer {int offset; int len; scalar_t__ flags; int /*<<< orphan*/ * ops; struct page* page; } ;
struct page {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct pipe_inode_info* private_data; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int ENOMEM ; 
 int EPIPE ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int ERESTARTSYS ; 
 int GFP_HIGHUSER ; 
 int O_NONBLOCK ; 
 int PAGE_SIZE ; 
 scalar_t__ PIPE_BUF_FLAG_PACKET ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int __GFP_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_inode_info*) ; 
 struct page* FUNC2 (int) ; 
 int /*<<< orphan*/  anon_pipe_buf_ops ; 
 int FUNC3 (struct page*,int,int,struct iov_iter*) ; 
 int /*<<< orphan*/  current ; 
 TYPE_1__* FUNC4 (struct file*) ; 
 int FUNC5 (struct file*) ; 
 size_t FUNC6 (struct iov_iter*) ; 
 scalar_t__ FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  packet_pipe_buf_ops ; 
 scalar_t__ FUNC9 (struct pipe_buffer*) ; 
 int FUNC10 (struct pipe_inode_info*,struct pipe_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t
FUNC18(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *filp = iocb->ki_filp;
	struct pipe_inode_info *pipe = filp->private_data;
	ssize_t ret = 0;
	int do_wakeup = 0;
	size_t total_len = FUNC6(from);
	ssize_t chars;

	/* Null write succeeds. */
	if (FUNC16(total_len == 0))
		return 0;

	FUNC0(pipe);

	if (!pipe->readers) {
		FUNC14(SIGPIPE, current, 0);
		ret = -EPIPE;
		goto out;
	}

	/* We try to merge small writes */
	chars = total_len & (PAGE_SIZE-1); /* size of the last buffer */
	if (pipe->nrbufs && chars != 0) {
		int lastbuf = (pipe->curbuf + pipe->nrbufs - 1) &
							(pipe->buffers - 1);
		struct pipe_buffer *buf = pipe->bufs + lastbuf;
		int offset = buf->offset + buf->len;

		if (FUNC9(buf) && offset + chars <= PAGE_SIZE) {
			ret = FUNC10(pipe, buf);
			if (ret)
				goto out;

			ret = FUNC3(buf->page, offset, chars, from);
			if (FUNC16(ret < chars)) {
				ret = -EFAULT;
				goto out;
			}
			do_wakeup = 1;
			buf->len += ret;
			if (!FUNC6(from))
				goto out;
		}
	}

	for (;;) {
		int bufs;

		if (!pipe->readers) {
			FUNC14(SIGPIPE, current, 0);
			if (!ret)
				ret = -EPIPE;
			break;
		}
		bufs = pipe->nrbufs;
		if (bufs < pipe->buffers) {
			int newbuf = (pipe->curbuf + bufs) & (pipe->buffers-1);
			struct pipe_buffer *buf = pipe->bufs + newbuf;
			struct page *page = pipe->tmp_page;
			int copied;

			if (!page) {
				page = FUNC2(GFP_HIGHUSER | __GFP_ACCOUNT);
				if (FUNC16(!page)) {
					ret = ret ? : -ENOMEM;
					break;
				}
				pipe->tmp_page = page;
			}
			/* Always wake up, even if the copy fails. Otherwise
			 * we lock up (O_NONBLOCK-)readers that sleep due to
			 * syscall merging.
			 * FIXME! Is this really true?
			 */
			do_wakeup = 1;
			copied = FUNC3(page, 0, PAGE_SIZE, from);
			if (FUNC16(copied < PAGE_SIZE && FUNC6(from))) {
				if (!ret)
					ret = -EFAULT;
				break;
			}
			ret += copied;

			/* Insert it into the buffer array */
			buf->page = page;
			buf->ops = &anon_pipe_buf_ops;
			buf->offset = 0;
			buf->len = copied;
			buf->flags = 0;
			if (FUNC7(filp)) {
				buf->ops = &packet_pipe_buf_ops;
				buf->flags = PIPE_BUF_FLAG_PACKET;
			}
			pipe->nrbufs = ++bufs;
			pipe->tmp_page = NULL;

			if (!FUNC6(from))
				break;
		}
		if (bufs < pipe->buffers)
			continue;
		if (filp->f_flags & O_NONBLOCK) {
			if (!ret)
				ret = -EAGAIN;
			break;
		}
		if (FUNC15(current)) {
			if (!ret)
				ret = -ERESTARTSYS;
			break;
		}
		if (do_wakeup) {
			FUNC17(&pipe->wait, EPOLLIN | EPOLLRDNORM);
			FUNC8(&pipe->fasync_readers, SIGIO, POLL_IN);
			do_wakeup = 0;
		}
		pipe->waiting_writers++;
		FUNC11(pipe);
		pipe->waiting_writers--;
	}
out:
	FUNC1(pipe);
	if (do_wakeup) {
		FUNC17(&pipe->wait, EPOLLIN | EPOLLRDNORM);
		FUNC8(&pipe->fasync_readers, SIGIO, POLL_IN);
	}
	if (ret > 0 && FUNC13(FUNC4(filp)->i_sb)) {
		int err = FUNC5(filp);
		if (err)
			ret = err;
		FUNC12(FUNC4(filp)->i_sb);
	}
	return ret;
}