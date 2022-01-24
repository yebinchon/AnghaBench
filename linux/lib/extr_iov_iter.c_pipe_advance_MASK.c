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
struct pipe_inode_info {struct pipe_buffer* bufs; } ;
struct pipe_buffer {size_t offset; size_t len; } ;
struct iov_iter {size_t count; size_t iov_offset; int idx; struct pipe_inode_info* pipe; } ;

/* Variables and functions */
 int FUNC0 (int,struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct iov_iter*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct iov_iter *i, size_t size)
{
	struct pipe_inode_info *pipe = i->pipe;
	if (FUNC2(i->count < size))
		size = i->count;
	if (size) {
		struct pipe_buffer *buf;
		size_t off = i->iov_offset, left = size;
		int idx = i->idx;
		if (off) /* make it relative to the beginning of buffer */
			left += off - pipe->bufs[idx].offset;
		while (1) {
			buf = &pipe->bufs[idx];
			if (left <= buf->len)
				break;
			left -= buf->len;
			idx = FUNC0(idx, pipe);
		}
		i->idx = idx;
		i->iov_offset = buf->offset + left;
	}
	i->count -= size;
	/* ... and discard everything past that point */
	FUNC1(i);
}