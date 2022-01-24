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
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct nfs4_cb_compound_hdr {void* nops; void* status; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr,
				  struct nfs4_cb_compound_hdr *hdr)
{
	u32 length;
	__be32 *p;

	p = FUNC3(xdr, 4 + 4);
	if (FUNC2(p == NULL))
		goto out_overflow;
	hdr->status = FUNC1(p++);
	/* Ignore the tag */
	length = FUNC1(p++);
	p = FUNC3(xdr, length + 4);
	if (FUNC2(p == NULL))
		goto out_overflow;
	p += FUNC0(length);
	hdr->nops = FUNC1(p);
	return 0;
out_overflow:
	return -EIO;
}