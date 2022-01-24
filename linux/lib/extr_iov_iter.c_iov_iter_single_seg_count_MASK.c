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
struct iov_iter {size_t count; int nr_segs; scalar_t__ iov_offset; TYPE_1__* iov; TYPE_2__* bvec; } ;
struct TYPE_4__ {scalar_t__ bv_len; } ;
struct TYPE_3__ {scalar_t__ iov_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iov_iter const*) ; 
 int /*<<< orphan*/  FUNC1 (struct iov_iter const*) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter const*) ; 
 size_t FUNC3 (size_t,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

size_t FUNC5(const struct iov_iter *i)
{
	if (FUNC4(FUNC2(i)))
		return i->count;	// it is a silly place, anyway
	if (i->nr_segs == 1)
		return i->count;
	if (FUNC4(FUNC1(i)))
		return i->count;
	else if (FUNC0(i))
		return FUNC3(i->count, i->bvec->bv_len - i->iov_offset);
	else
		return FUNC3(i->count, i->iov->iov_len - i->iov_offset);
}