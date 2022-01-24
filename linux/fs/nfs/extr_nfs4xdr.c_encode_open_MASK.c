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
struct TYPE_2__ {int /*<<< orphan*/  delegation; int /*<<< orphan*/  delegation_type; } ;
struct nfs_openargs {int claim; TYPE_1__ u; int /*<<< orphan*/  name; } ;
struct compound_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  NFS4_OPEN_CLAIM_DELEGATE_CUR 132 
#define  NFS4_OPEN_CLAIM_DELEG_CUR_FH 131 
#define  NFS4_OPEN_CLAIM_FH 130 
#define  NFS4_OPEN_CLAIM_NULL 129 
#define  NFS4_OPEN_CLAIM_PREVIOUS 128 
 int /*<<< orphan*/  OP_OPEN ; 
 int /*<<< orphan*/  decode_open_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct xdr_stream*,struct nfs_openargs const*) ; 
 int /*<<< orphan*/  FUNC8 (struct xdr_stream*,struct nfs_openargs const*) ; 

__attribute__((used)) static void FUNC9(struct xdr_stream *xdr, const struct nfs_openargs *arg, struct compound_hdr *hdr)
{
	FUNC6(xdr, OP_OPEN, decode_open_maxsz, hdr);
	FUNC7(xdr, arg);
	FUNC8(xdr, arg);
	switch (arg->claim) {
	case NFS4_OPEN_CLAIM_NULL:
		FUNC4(xdr, arg->name);
		break;
	case NFS4_OPEN_CLAIM_PREVIOUS:
		FUNC5(xdr, arg->u.delegation_type);
		break;
	case NFS4_OPEN_CLAIM_DELEGATE_CUR:
		FUNC1(xdr, arg->name, &arg->u.delegation);
		break;
	case NFS4_OPEN_CLAIM_FH:
		FUNC3(xdr);
		break;
	case NFS4_OPEN_CLAIM_DELEG_CUR_FH:
		FUNC2(xdr, &arg->u.delegation);
		break;
	default:
		FUNC0();
	}
}