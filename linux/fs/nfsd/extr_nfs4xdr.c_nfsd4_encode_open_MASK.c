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
struct nfsd4_open {int op_rflags; int op_delegate_type; int op_recall; int op_why_no_deleg; int /*<<< orphan*/  op_delegate_stateid; int /*<<< orphan*/ * op_bmval; int /*<<< orphan*/  op_cinfo; int /*<<< orphan*/  op_stateid; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE ; 
 int NFS4_LIMIT_SIZE ; 
#define  NFS4_OPEN_DELEGATE_NONE 133 
#define  NFS4_OPEN_DELEGATE_NONE_EXT 132 
#define  NFS4_OPEN_DELEGATE_READ 131 
#define  NFS4_OPEN_DELEGATE_WRITE 130 
#define  WND4_CONTENTION 129 
#define  WND4_RESOURCE 128 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/ * FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC6(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_open *open)
{
	struct xdr_stream *xdr = &resp->xdr;
	__be32 *p;

	nfserr = FUNC4(xdr, &open->op_stateid);
	if (nfserr)
		return nfserr;
	p = FUNC5(xdr, 24);
	if (!p)
		return nfserr_resource;
	p = FUNC2(p, &open->op_cinfo);
	*p++ = FUNC1(open->op_rflags);

	nfserr = FUNC3(xdr, open->op_bmval[0], open->op_bmval[1],
					open->op_bmval[2]);
	if (nfserr)
		return nfserr;

	p = FUNC5(xdr, 4);
	if (!p)
		return nfserr_resource;

	*p++ = FUNC1(open->op_delegate_type);
	switch (open->op_delegate_type) {
	case NFS4_OPEN_DELEGATE_NONE:
		break;
	case NFS4_OPEN_DELEGATE_READ:
		nfserr = FUNC4(xdr, &open->op_delegate_stateid);
		if (nfserr)
			return nfserr;
		p = FUNC5(xdr, 20);
		if (!p)
			return nfserr_resource;
		*p++ = FUNC1(open->op_recall);

		/*
		 * TODO: ACE's in delegations
		 */
		*p++ = FUNC1(NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE);
		*p++ = FUNC1(0);
		*p++ = FUNC1(0);
		*p++ = FUNC1(0);   /* XXX: is NULL principal ok? */
		break;
	case NFS4_OPEN_DELEGATE_WRITE:
		nfserr = FUNC4(xdr, &open->op_delegate_stateid);
		if (nfserr)
			return nfserr;
		p = FUNC5(xdr, 32);
		if (!p)
			return nfserr_resource;
		*p++ = FUNC1(0);

		/*
		 * TODO: space_limit's in delegations
		 */
		*p++ = FUNC1(NFS4_LIMIT_SIZE);
		*p++ = FUNC1(~(u32)0);
		*p++ = FUNC1(~(u32)0);

		/*
		 * TODO: ACE's in delegations
		 */
		*p++ = FUNC1(NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE);
		*p++ = FUNC1(0);
		*p++ = FUNC1(0);
		*p++ = FUNC1(0);   /* XXX: is NULL principal ok? */
		break;
	case NFS4_OPEN_DELEGATE_NONE_EXT: /* 4.1 */
		switch (open->op_why_no_deleg) {
		case WND4_CONTENTION:
		case WND4_RESOURCE:
			p = FUNC5(xdr, 8);
			if (!p)
				return nfserr_resource;
			*p++ = FUNC1(open->op_why_no_deleg);
			/* deleg signaling not supported yet: */
			*p++ = FUNC1(0);
			break;
		default:
			p = FUNC5(xdr, 4);
			if (!p)
				return nfserr_resource;
			*p++ = FUNC1(open->op_why_no_deleg);
		}
		break;
	default:
		FUNC0();
	}
	/* XXX save filehandle here */
	return 0;
}