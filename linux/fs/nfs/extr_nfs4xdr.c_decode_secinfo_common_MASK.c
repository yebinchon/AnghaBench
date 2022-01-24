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
struct nfs4_secinfo_res {TYPE_1__* flavors; } ;
struct nfs4_secinfo4 {void* flavor; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  num_flavors; struct nfs4_secinfo4* flavors; } ;

/* Variables and functions */
 int EIO ; 
 int PAGE_SIZE ; 
 void* RPC_AUTH_GSS ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,struct nfs4_secinfo4*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, struct nfs4_secinfo_res *res)
{
	struct nfs4_secinfo4 *sec_flavor;
	unsigned int i, num_flavors;
	int status;
	__be32 *p;

	p = FUNC3(xdr, 4);
	if (FUNC2(!p))
		return -EIO;

	res->flavors->num_flavors = 0;
	num_flavors = FUNC0(p);

	for (i = 0; i < num_flavors; i++) {
		sec_flavor = &res->flavors->flavors[i];
		if ((char *)&sec_flavor[1] - (char *)res->flavors > PAGE_SIZE)
			break;

		p = FUNC3(xdr, 4);
		if (FUNC2(!p))
			return -EIO;
		sec_flavor->flavor = FUNC0(p);

		if (sec_flavor->flavor == RPC_AUTH_GSS) {
			status = FUNC1(xdr, sec_flavor);
			if (status)
				goto out;
		}
		res->flavors->num_flavors++;
	}

	status = 0;
out:
	return status;
}