#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct nfs_locku_args {TYPE_1__* fl; int /*<<< orphan*/  stateid; int /*<<< orphan*/  seqid; } ;
struct compound_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  fl_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_LOCKU ; 
 int /*<<< orphan*/  decode_locku_maxsz ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct xdr_stream *xdr, const struct nfs_locku_args *args, struct compound_hdr *hdr)
{
	__be32 *p;

	FUNC2(xdr, OP_LOCKU, decode_locku_maxsz, hdr);
	FUNC3(xdr, FUNC5(args->fl, 0));
	FUNC0(xdr, args->seqid);
	FUNC1(xdr, &args->stateid);
	p = FUNC6(xdr, 16);
	p = FUNC7(p, args->fl->fl_start);
	FUNC7(p, FUNC4(args->fl));
}