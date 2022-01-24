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
struct nfs_lock_args {int /*<<< orphan*/  lock_seqid; int /*<<< orphan*/  lock_stateid; int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  open_stateid; int /*<<< orphan*/  open_seqid; scalar_t__ new_lock_owner; TYPE_1__* fl; scalar_t__ reclaim; int /*<<< orphan*/  block; } ;
struct compound_hdr {int dummy; } ;
typedef  void* __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  fl_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_LOCK ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  decode_lock_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void** FUNC7 (struct xdr_stream*,int) ; 
 void** FUNC8 (void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct xdr_stream *xdr, const struct nfs_lock_args *args, struct compound_hdr *hdr)
{
	__be32 *p;

	FUNC4(xdr, OP_LOCK, decode_lock_maxsz, hdr);
	p = FUNC7(xdr, 28);
	*p++ = FUNC0(FUNC6(args->fl, args->block));
	*p++ = FUNC0(args->reclaim);
	p = FUNC8(p, args->fl->fl_start);
	p = FUNC8(p, FUNC5(args->fl));
	*p = FUNC0(args->new_lock_owner);
	if (args->new_lock_owner){
		FUNC2(xdr, args->open_seqid);
		FUNC3(xdr, &args->open_stateid);
		FUNC2(xdr, args->lock_seqid);
		FUNC1(xdr, &args->lock_owner);
	}
	else {
		FUNC3(xdr, &args->lock_stateid);
		FUNC2(xdr, args->lock_seqid);
	}
}