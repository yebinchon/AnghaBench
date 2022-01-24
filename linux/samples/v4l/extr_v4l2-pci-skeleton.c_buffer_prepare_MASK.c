#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct TYPE_3__ {unsigned long sizeimage; } ;
struct skeleton {TYPE_2__* pdev; TYPE_1__ format; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long,unsigned long) ; 
 struct skeleton* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct vb2_buffer *vb)
{
	struct skeleton *skel = FUNC1(vb->vb2_queue);
	unsigned long size = skel->format.sizeimage;

	if (FUNC2(vb, 0) < size) {
		FUNC0(&skel->pdev->dev, "buffer too small (%lu < %lu)\n",
			 FUNC2(vb, 0), size);
		return -EINVAL;
	}

	FUNC3(vb, 0, size);
	return 0;
}