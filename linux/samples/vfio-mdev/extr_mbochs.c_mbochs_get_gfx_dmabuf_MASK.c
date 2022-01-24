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
typedef  int /*<<< orphan*/  u32 ;
struct mdev_state {int /*<<< orphan*/  ops_lock; } ;
struct mdev_device {int dummy; } ;
struct mbochs_dmabuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbochs_dmabuf*) ; 
 struct mbochs_dmabuf* FUNC2 (struct mdev_state*,int /*<<< orphan*/ ) ; 
 struct mdev_state* FUNC3 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mdev_device *mdev,
				 u32 id)
{
	struct mdev_state *mdev_state = FUNC3(mdev);
	struct mbochs_dmabuf *dmabuf;

	FUNC4(&mdev_state->ops_lock);

	dmabuf = FUNC2(mdev_state, id);
	if (!dmabuf) {
		FUNC5(&mdev_state->ops_lock);
		return -ENOENT;
	}

	if (!dmabuf->buf)
		FUNC1(dmabuf);

	FUNC5(&mdev_state->ops_lock);

	if (!dmabuf->buf)
		return -EINVAL;

	return FUNC0(dmabuf->buf, 0);
}