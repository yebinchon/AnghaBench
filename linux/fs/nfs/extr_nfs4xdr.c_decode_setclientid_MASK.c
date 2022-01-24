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
typedef  scalar_t__ uint32_t ;
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfs4_setclientid_res {TYPE_1__ confirm; int /*<<< orphan*/  clientid; } ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int NFS4_VERIFIER_SIZE ; 
 scalar_t__ NFSERR_CLID_INUSE ; 
 scalar_t__ NFS_OK ; 
 scalar_t__ OP_SETCLIENTID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct xdr_stream*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct xdr_stream *xdr, struct nfs4_setclientid_res *res)
{
	__be32 *p;
	uint32_t opnum;
	int32_t nfserr;

	p = FUNC6(xdr, 8);
	if (FUNC4(!p))
		return -EIO;
	opnum = FUNC0(p++);
	if (opnum != OP_SETCLIENTID) {
		FUNC1("nfs: decode_setclientid: Server returned operation"
			" %d\n", opnum);
		return -EIO;
	}
	nfserr = FUNC0(p);
	if (nfserr == NFS_OK) {
		p = FUNC6(xdr, 8 + NFS4_VERIFIER_SIZE);
		if (FUNC4(!p))
			return -EIO;
		p = FUNC5(p, &res->clientid);
		FUNC2(res->confirm.data, p, NFS4_VERIFIER_SIZE);
	} else if (nfserr == NFSERR_CLID_INUSE) {
		uint32_t len;

		/* skip netid string */
		p = FUNC6(xdr, 4);
		if (FUNC4(!p))
			return -EIO;
		len = FUNC0(p);
		p = FUNC6(xdr, len);
		if (FUNC4(!p))
			return -EIO;

		/* skip uaddr string */
		p = FUNC6(xdr, 4);
		if (FUNC4(!p))
			return -EIO;
		len = FUNC0(p);
		p = FUNC6(xdr, len);
		if (FUNC4(!p))
			return -EIO;
		return -NFSERR_CLID_INUSE;
	} else
		return FUNC3(nfserr);

	return 0;
}