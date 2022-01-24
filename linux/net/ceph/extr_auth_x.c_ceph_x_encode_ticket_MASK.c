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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ceph_x_ticket_handler {TYPE_1__* ticket_blob; int /*<<< orphan*/  secret_id; } ;
struct TYPE_4__ {char* iov_base; int /*<<< orphan*/  iov_len; } ;
struct TYPE_3__ {TYPE_2__ vec; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC0 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int) ; 
 int /*<<< orphan*/  FUNC4 (void**,void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ceph_x_ticket_handler *th,
				void **p, void *end)
{
	FUNC0(p, end, 1 + sizeof(u64), bad);
	FUNC3(p, 1);
	FUNC2(p, th->secret_id);
	if (th->ticket_blob) {
		const char *buf = th->ticket_blob->vec.iov_base;
		u32 len = th->ticket_blob->vec.iov_len;

		FUNC1(p, end, len, bad);
		FUNC4(p, end, buf, len, bad);
	} else {
		FUNC1(p, end, 0, bad);
	}

	return 0;
bad:
	return -ERANGE;
}