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
struct iov_iter {size_t iov_offset; int idx; TYPE_1__* pipe; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bufs; } ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC2(const struct iov_iter *i, int *idxp, size_t *offp)
{
	size_t off = i->iov_offset;
	int idx = i->idx;
	if (off && (!FUNC0(&i->pipe->bufs[idx]) || off == PAGE_SIZE)) {
		idx = FUNC1(idx, i->pipe);
		off = 0;
	}
	*idxp = idx;
	*offp = off;
}