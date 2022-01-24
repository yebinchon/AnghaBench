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
struct cb_compound_hdr_res {int /*<<< orphan*/ * nops; int /*<<< orphan*/  tag; int /*<<< orphan*/  taglen; int /*<<< orphan*/ * status; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 scalar_t__ FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 FUNC4(struct xdr_stream *xdr, struct cb_compound_hdr_res *hdr)
{
	__be32 status;

	hdr->status = FUNC3(xdr, 4);
	if (FUNC2(hdr->status == NULL))
		return FUNC1(NFS4ERR_RESOURCE);
	status = FUNC0(xdr, hdr->taglen, hdr->tag);
	if (FUNC2(status != 0))
		return status;
	hdr->nops = FUNC3(xdr, 4);
	if (FUNC2(hdr->nops == NULL))
		return FUNC1(NFS4ERR_RESOURCE);
	return 0;
}