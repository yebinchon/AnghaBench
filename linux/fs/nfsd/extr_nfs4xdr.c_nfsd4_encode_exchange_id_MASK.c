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
typedef  int /*<<< orphan*/  uint64_t ;
struct xdr_stream {int dummy; } ;
struct nfsd4_exchange_id {int seqid; int flags; int spa_how; int /*<<< orphan*/ * spo_must_allow; int /*<<< orphan*/ * spo_must_enforce; int /*<<< orphan*/  clientid; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {char* nodename; } ;

/* Variables and functions */
#define  SP4_MACH_CRED 129 
#define  SP4_NONE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int FUNC4 (char*) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32
FUNC10(struct nfsd4_compoundres *resp, __be32 nfserr,
			 struct nfsd4_exchange_id *exid)
{
	struct xdr_stream *xdr = &resp->xdr;
	__be32 *p;
	char *major_id;
	char *server_scope;
	int major_id_sz;
	int server_scope_sz;
	uint64_t minor_id = 0;

	major_id = FUNC5()->nodename;
	major_id_sz = FUNC4(major_id);
	server_scope = FUNC5()->nodename;
	server_scope_sz = FUNC4(server_scope);

	p = FUNC9(xdr,
		8 /* eir_clientid */ +
		4 /* eir_sequenceid */ +
		4 /* eir_flags */ +
		4 /* spr_how */);
	if (!p)
		return nfserr_resource;

	p = FUNC8(p, &exid->clientid, 8);
	*p++ = FUNC2(exid->seqid);
	*p++ = FUNC2(exid->flags);

	*p++ = FUNC2(exid->spa_how);

	switch (exid->spa_how) {
	case SP4_NONE:
		break;
	case SP4_MACH_CRED:
		/* spo_must_enforce bitmap: */
		nfserr = FUNC3(xdr,
					exid->spo_must_enforce[0],
					exid->spo_must_enforce[1],
					exid->spo_must_enforce[2]);
		if (nfserr)
			return nfserr;
		/* spo_must_allow bitmap: */
		nfserr = FUNC3(xdr,
					exid->spo_must_allow[0],
					exid->spo_must_allow[1],
					exid->spo_must_allow[2]);
		if (nfserr)
			return nfserr;
		break;
	default:
		FUNC0(1);
	}

	p = FUNC9(xdr,
		8 /* so_minor_id */ +
		4 /* so_major_id.len */ +
		(FUNC1(major_id_sz) * 4) +
		4 /* eir_server_scope.len */ +
		(FUNC1(server_scope_sz) * 4) +
		4 /* eir_server_impl_id.count (0) */);
	if (!p)
		return nfserr_resource;

	/* The server_owner struct */
	p = FUNC6(p, minor_id);      /* Minor id */
	/* major id */
	p = FUNC7(p, major_id, major_id_sz);

	/* Server scope */
	p = FUNC7(p, server_scope, server_scope_sz);

	/* Implementation id */
	*p++ = FUNC2(0);	/* zero length nfs_impl_id4 array */
	return 0;
}