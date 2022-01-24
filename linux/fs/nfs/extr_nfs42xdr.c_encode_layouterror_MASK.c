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
struct nfs42_layout_error {int /*<<< orphan*/ * errors; int /*<<< orphan*/  stateid; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct compound_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  OP_LAYOUTERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  decode_layouterror_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct xdr_stream *xdr,
			       const struct nfs42_layout_error *args,
			       struct compound_hdr *hdr)
{
	__be32 *p;

	FUNC3(xdr, OP_LAYOUTERROR, decode_layouterror_maxsz, hdr);
	p = FUNC4(xdr, 8 + 8);
	p = FUNC5(p, args->offset);
	p = FUNC5(p, args->length);
	FUNC2(xdr, &args->stateid);
	p = FUNC4(xdr, 4);
	*p = FUNC0(1);
	FUNC1(xdr, &args->errors[0]);
}