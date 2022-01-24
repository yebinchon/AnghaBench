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
struct nfs_pgio_res {TYPE_1__* verf; void* count; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  verifier; void* committed; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  OP_WRITE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr, struct nfs_pgio_res *res)
{
	__be32 *p;
	int status;

	status = FUNC1(xdr, OP_WRITE);
	if (status)
		return status;

	p = FUNC4(xdr, 8);
	if (FUNC3(!p))
		return -EIO;
	res->count = FUNC0(p++);
	res->verf->committed = FUNC0(p++);
	return FUNC2(xdr, &res->verf->verifier);
}