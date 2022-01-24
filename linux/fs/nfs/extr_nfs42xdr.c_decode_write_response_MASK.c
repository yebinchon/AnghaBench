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
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  verifier; void* committed; } ;
struct nfs42_write_res {TYPE_1__ verifier; int /*<<< orphan*/  count; int /*<<< orphan*/  stateid; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  NFS4_STATEID_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC6(struct xdr_stream *xdr,
				 struct nfs42_write_res *res)
{
	__be32 *p;
	int status, count;

	p = FUNC5(xdr, 4);
	if (FUNC3(!p))
		return -EIO;
	count = FUNC0(p);
	if (count > 1)
		return -EREMOTEIO;
	else if (count == 1) {
		status = FUNC1(xdr, &res->stateid,
				NFS4_STATEID_SIZE);
		if (FUNC3(status))
			return -EIO;
	}
	p = FUNC5(xdr, 8 + 4);
	if (FUNC3(!p))
		return -EIO;
	p = FUNC4(p, &res->count);
	res->verifier.committed = FUNC0(p);
	return FUNC2(xdr, &res->verifier.verifier);
}