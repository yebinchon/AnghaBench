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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfsd4_write {TYPE_1__ wr_verifier; int /*<<< orphan*/  wr_how_written; int /*<<< orphan*/  wr_bytes_written; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_VERIFIER_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_write *write)
{
	struct xdr_stream *xdr = &resp->xdr;
	__be32 *p;

	p = FUNC2(xdr, 16);
	if (!p)
		return nfserr_resource;
	*p++ = FUNC0(write->wr_bytes_written);
	*p++ = FUNC0(write->wr_how_written);
	p = FUNC1(p, write->wr_verifier.data,
						NFS4_VERIFIER_SIZE);
	return 0;
}