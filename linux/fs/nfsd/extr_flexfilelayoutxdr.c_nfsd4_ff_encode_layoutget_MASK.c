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
struct xdr_stream {int dummy; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int si_generation; int /*<<< orphan*/  si_opaque; } ;
struct pnfs_ff_layout {int flags; TYPE_2__ fh; TYPE_1__ stateid; int /*<<< orphan*/  deviceid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct nfsd4_layoutget {struct pnfs_ff_layout* lg_content; } ;
struct nfsd4_deviceid {int dummy; } ;
struct ff_idmap {int len; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  stateid_opaque_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  nfserr_toosmall ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct xdr_stream*,int) ; 

__be32
FUNC8(struct xdr_stream *xdr,
		struct nfsd4_layoutget *lgp)
{
	struct pnfs_ff_layout *fl = lgp->lg_content;
	int len, mirror_len, ds_len, fh_len;
	__be32 *p;

	/*
	 * Unlike nfsd4_encode_user, we know these will
	 * always be stringified.
	 */
	struct ff_idmap uid;
	struct ff_idmap gid;

	fh_len = 4 + fl->fh.size;

	uid.len = FUNC3(uid.buf, "%u", FUNC2(&init_user_ns, fl->uid));
	gid.len = FUNC3(gid.buf, "%u", FUNC1(&init_user_ns, fl->gid));

	/* 8 + len for recording the length, name, and padding */
	ds_len = 20 + sizeof(stateid_opaque_t) + 4 + fh_len +
		 8 + uid.len + 8 + gid.len;

	mirror_len = 4 + ds_len;

	/* The layout segment */
	len = 20 + mirror_len;

	p = FUNC7(xdr, sizeof(__be32) + len);
	if (!p)
		return nfserr_toosmall;

	*p++ = FUNC0(len);
	p = FUNC4(p, 0);		/* stripe unit of 1 */

	*p++ = FUNC0(1);			/* single mirror */
	*p++ = FUNC0(1);			/* single data server */

	p = FUNC6(p, &fl->deviceid,
			sizeof(struct nfsd4_deviceid));

	*p++ = FUNC0(1);			/* efficiency */

	*p++ = FUNC0(fl->stateid.si_generation);
	p = FUNC6(p, &fl->stateid.si_opaque,
				    sizeof(stateid_opaque_t));

	*p++ = FUNC0(1);			/* single file handle */
	p = FUNC5(p, fl->fh.data, fl->fh.size);

	p = FUNC5(p, uid.buf, uid.len);
	p = FUNC5(p, gid.buf, gid.len);

	*p++ = FUNC0(fl->flags);
	*p++ = FUNC0(0);			/* No stats collect hint */

	return 0;
}