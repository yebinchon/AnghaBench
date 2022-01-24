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
struct xdr_stream {int dummy; } ;
struct nfs4_secinfo_res {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_SECINFO ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xdr_stream*,struct nfs4_secinfo_res*) ; 

__attribute__((used)) static int FUNC2(struct xdr_stream *xdr, struct nfs4_secinfo_res *res)
{
	int status = FUNC0(xdr, OP_SECINFO);
	if (status)
		return status;
	return FUNC1(xdr, res);
}