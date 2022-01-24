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
struct iovec {int dummy; } ;
struct iov_iter {void const* bvec; int nr_segs; void const* iov; } ;
struct bio_vec {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*) ; 
 void* FUNC4 (void const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

const void *FUNC6(struct iov_iter *new, struct iov_iter *old, gfp_t flags)
{
	*new = *old;
	if (FUNC5(FUNC3(new))) {
		FUNC0(1);
		return NULL;
	}
	if (FUNC5(FUNC2(new)))
		return NULL;
	if (FUNC1(new))
		return new->bvec = FUNC4(new->bvec,
				    new->nr_segs * sizeof(struct bio_vec),
				    flags);
	else
		/* iovec and kvec have identical layout */
		return new->iov = FUNC4(new->iov,
				   new->nr_segs * sizeof(struct iovec),
				   flags);
}