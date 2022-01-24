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
struct nfs_pgio_args {int /*<<< orphan*/  count; int /*<<< orphan*/  pgbase; int /*<<< orphan*/  pages; int /*<<< orphan*/  stable; int /*<<< orphan*/  offset; int /*<<< orphan*/  stateid; } ;
struct compound_hdr {int dummy; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  OP_WRITE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decode_write_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 void** FUNC3 (struct xdr_stream*,int) ; 
 void** FUNC4 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct xdr_stream *xdr, const struct nfs_pgio_args *args,
			 struct compound_hdr *hdr)
{
	__be32 *p;

	FUNC2(xdr, OP_WRITE, decode_write_maxsz, hdr);
	FUNC1(xdr, &args->stateid);

	p = FUNC3(xdr, 16);
	p = FUNC4(p, args->offset);
	*p++ = FUNC0(args->stable);
	*p = FUNC0(args->count);

	FUNC5(xdr, args->pages, args->pgbase, args->count);
}