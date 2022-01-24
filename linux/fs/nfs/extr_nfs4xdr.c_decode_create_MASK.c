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
struct nfs4_change_info {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  OP_CREATE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,struct nfs4_change_info*) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC6(struct xdr_stream *xdr, struct nfs4_change_info *cinfo)
{
	__be32 *p;
	uint32_t bmlen;
	int status;

	status = FUNC2(xdr, OP_CREATE);
	if (status)
		return status;
	if ((status = FUNC1(xdr, cinfo)))
		return status;
	p = FUNC5(xdr, 4);
	if (FUNC4(!p))
		return -EIO;
	bmlen = FUNC0(p);
	p = FUNC5(xdr, bmlen << 2);
	if (FUNC3(p))
		return 0;
	return -EIO;
}