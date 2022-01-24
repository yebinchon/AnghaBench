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
struct pipe_inode_info {int buffers; struct pipe_inode_info* bufs; scalar_t__ tmp_page; scalar_t__ ops; int /*<<< orphan*/  user; } ;
struct pipe_buffer {int buffers; struct pipe_buffer* bufs; scalar_t__ tmp_page; scalar_t__ ops; int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pipe_inode_info*,struct pipe_inode_info*) ; 

void FUNC5(struct pipe_inode_info *pipe)
{
	int i;

	(void) FUNC1(pipe->user, pipe->buffers, 0);
	FUNC2(pipe->user);
	for (i = 0; i < pipe->buffers; i++) {
		struct pipe_buffer *buf = pipe->bufs + i;
		if (buf->ops)
			FUNC4(pipe, buf);
	}
	if (pipe->tmp_page)
		FUNC0(pipe->tmp_page);
	FUNC3(pipe->bufs);
	FUNC3(pipe);
}