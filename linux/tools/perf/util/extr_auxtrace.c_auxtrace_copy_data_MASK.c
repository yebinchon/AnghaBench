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
typedef  scalar_t__ u64 ;
struct perf_session {int /*<<< orphan*/  data; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ SSIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,void*,scalar_t__) ; 

__attribute__((used)) static void *FUNC4(u64 size, struct perf_session *session)
{
	int fd = FUNC2(session->data);
	void *p;
	ssize_t ret;

	if (size > SSIZE_MAX)
		return NULL;

	p = FUNC1(size);
	if (!p)
		return NULL;

	ret = FUNC3(fd, p, size);
	if (ret != (ssize_t)size) {
		FUNC0(p);
		return NULL;
	}

	return p;
}