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
typedef  int /*<<< orphan*/  u64 ;
struct xdr_stream {int dummy; } ;
struct xdr_netobj {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct nfsd4_lock_denied {int /*<<< orphan*/  ld_clientid; int /*<<< orphan*/  ld_type; int /*<<< orphan*/  ld_length; int /*<<< orphan*/  ld_start; struct xdr_netobj ld_owner; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfserr_denied ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct xdr_stream*,scalar_t__) ; 

__attribute__((used)) static __be32
FUNC7(struct xdr_stream *xdr, struct nfsd4_lock_denied *ld)
{
	struct xdr_netobj *conf = &ld->ld_owner;
	__be32 *p;

again:
	p = FUNC6(xdr, 32 + FUNC0(conf->len));
	if (!p) {
		/*
		 * Don't fail to return the result just because we can't
		 * return the conflicting open:
		 */
		if (conf->len) {
			FUNC2(conf->data);
			conf->len = 0;
			conf->data = NULL;
			goto again;
		}
		return nfserr_resource;
	}
	p = FUNC3(p, ld->ld_start);
	p = FUNC3(p, ld->ld_length);
	*p++ = FUNC1(ld->ld_type);
	if (conf->len) {
		p = FUNC5(p, &ld->ld_clientid, 8);
		p = FUNC4(p, conf->data, conf->len);
		FUNC2(conf->data);
	}  else {  /* non - nfsv4 lock in conflict, no clientid nor owner */
		p = FUNC3(p, (u64)0); /* clientid */
		*p++ = FUNC1(0); /* length of owner name */
	}
	return nfserr_denied;
}