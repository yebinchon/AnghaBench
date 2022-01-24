#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {void* service; void* qop; TYPE_1__ oid; } ;
struct nfs4_secinfo4 {TYPE_2__ flavor_info; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int GSS_OID_MAX_LEN ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr,
			      struct nfs4_secinfo4 *flavor)
{
	u32 oid_len;
	__be32 *p;

	p = FUNC3(xdr, 4);
	if (FUNC2(!p))
		return -EIO;
	oid_len = FUNC0(p);
	if (oid_len > GSS_OID_MAX_LEN)
		return -EINVAL;

	p = FUNC3(xdr, oid_len);
	if (FUNC2(!p))
		return -EIO;
	FUNC1(flavor->flavor_info.oid.data, p, oid_len);
	flavor->flavor_info.oid.len = oid_len;

	p = FUNC3(xdr, 8);
	if (FUNC2(!p))
		return -EIO;
	flavor->flavor_info.qop = FUNC0(p++);
	flavor->flavor_info.service = FUNC0(p);

	return 0;
}