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
struct TYPE_2__ {size_t iov_len; int /*<<< orphan*/  iov_base; } ;
struct ceph_buffer {size_t alloc_len; TYPE_1__ vec; int /*<<< orphan*/  kref; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ceph_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_buffer*) ; 
 struct ceph_buffer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct ceph_buffer *FUNC5(size_t len, gfp_t gfp)
{
	struct ceph_buffer *b;

	b = FUNC3(sizeof(*b), gfp);
	if (!b)
		return NULL;

	b->vec.iov_base = FUNC0(len, gfp);
	if (!b->vec.iov_base) {
		FUNC2(b);
		return NULL;
	}

	FUNC4(&b->kref);
	b->alloc_len = len;
	b->vec.iov_len = len;
	FUNC1("buffer_new %p\n", b);
	return b;
}