#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct mountres {int /*<<< orphan*/  errno; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {scalar_t__ status; int /*<<< orphan*/  errno; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EACCES ; 
 int EIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 TYPE_1__* mnt_errtbl ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr, struct mountres *res)
{
	unsigned int i;
	u32 status;
	__be32 *p;

	p = FUNC4(xdr, 4);
	if (FUNC3(p == NULL))
		return -EIO;
	status = FUNC1(p);

	for (i = 0; i < FUNC0(mnt_errtbl); i++) {
		if (mnt_errtbl[i].status == status) {
			res->errno = mnt_errtbl[i].errno;
			return 0;
		}
	}

	FUNC2("NFS: unrecognized MNT status code: %u\n", status);
	res->errno = -EACCES;
	return 0;
}