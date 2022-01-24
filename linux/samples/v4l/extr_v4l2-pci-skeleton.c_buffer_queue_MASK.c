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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct skeleton {int /*<<< orphan*/  qlock; int /*<<< orphan*/  buf_list; } ;
struct skel_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct skel_buffer* FUNC3 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC4 (struct vb2_buffer*) ; 
 struct skeleton* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC4(vb);
	struct skeleton *skel = FUNC5(vb->vb2_queue);
	struct skel_buffer *buf = FUNC3(vbuf);
	unsigned long flags;

	FUNC1(&skel->qlock, flags);
	FUNC0(&buf->list, &skel->buf_list);

	/* TODO: Update any DMA pointers if necessary */

	FUNC2(&skel->qlock, flags);
}