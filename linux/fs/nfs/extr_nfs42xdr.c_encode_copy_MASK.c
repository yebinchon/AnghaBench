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
struct nfs42_copy_args {int sync; int /*<<< orphan*/  count; int /*<<< orphan*/  dst_pos; int /*<<< orphan*/  src_pos; int /*<<< orphan*/  dst_stateid; int /*<<< orphan*/  src_stateid; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_COPY ; 
 int /*<<< orphan*/  decode_copy_maxsz ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr,
			const struct nfs42_copy_args *args,
			struct compound_hdr *hdr)
{
	FUNC1(xdr, OP_COPY, decode_copy_maxsz, hdr);
	FUNC0(xdr, &args->src_stateid);
	FUNC0(xdr, &args->dst_stateid);

	FUNC3(xdr, args->src_pos);
	FUNC3(xdr, args->dst_pos);
	FUNC3(xdr, args->count);

	FUNC2(xdr, 1); /* consecutive = true */
	FUNC2(xdr, args->sync);
	FUNC2(xdr, 0); /* src server list */
}