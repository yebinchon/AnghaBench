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
struct nfs_commitres {TYPE_1__* verf; } ;
struct TYPE_2__ {int /*<<< orphan*/  verifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_COMMIT ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct xdr_stream *xdr, struct nfs_commitres *res)
{
	int status;

	status = FUNC0(xdr, OP_COMMIT);
	if (!status)
		status = FUNC1(xdr, &res->verf->verifier);
	return status;
}