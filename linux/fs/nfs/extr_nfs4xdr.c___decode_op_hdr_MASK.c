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
typedef  int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef  void* int32_t ;
typedef  enum nfs_opnum4 { ____Placeholder_nfs_opnum4 } nfs_opnum4 ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EIO ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  NFS_OK ; 
 void* FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int,void*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__* FUNC6 (struct xdr_stream*,int) ; 

__attribute__((used)) static bool FUNC7(struct xdr_stream *xdr, enum nfs_opnum4 expected,
		int *nfs_retval)
{
	__be32 *p;
	uint32_t opnum;
	int32_t nfserr;

	p = FUNC6(xdr, 8);
	if (FUNC5(!p))
		goto out_overflow;
	opnum = FUNC0(p++);
	if (FUNC5(opnum != expected))
		goto out_bad_operation;
	if (FUNC5(*p != FUNC1(NFS_OK)))
		goto out_status;
	*nfs_retval = 0;
	return true;
out_status:
	nfserr = FUNC0(p);
	FUNC4(xdr, opnum, nfserr);
	*nfs_retval = FUNC3(nfserr);
	return true;
out_bad_operation:
	FUNC2("nfs: Server returned operation"
		" %d but we issued a request for %d\n",
			opnum, expected);
	*nfs_retval = -EREMOTEIO;
	return false;
out_overflow:
	*nfs_retval = -EIO;
	return false;
}