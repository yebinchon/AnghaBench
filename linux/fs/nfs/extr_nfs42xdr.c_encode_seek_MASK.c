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
struct nfs42_seek_args {int /*<<< orphan*/  sa_what; int /*<<< orphan*/  sa_offset; int /*<<< orphan*/  sa_stateid; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_SEEK ; 
 int /*<<< orphan*/  decode_seek_maxsz ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr,
			const struct nfs42_seek_args *args,
			struct compound_hdr *hdr)
{
	FUNC1(xdr, OP_SEEK, decode_seek_maxsz, hdr);
	FUNC0(xdr, &args->sa_stateid);
	FUNC3(xdr, args->sa_offset);
	FUNC2(xdr, args->sa_what);
}