#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {TYPE_2__* buf; } ;
struct TYPE_9__ {int /*<<< orphan*/  specdata2; int /*<<< orphan*/  specdata1; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  pages; } ;
struct TYPE_10__ {TYPE_3__ device; TYPE_1__ symlink; } ;
struct nfs4_create_arg {int ftype; TYPE_6__* server; int /*<<< orphan*/  umask; int /*<<< orphan*/  label; int /*<<< orphan*/  attrs; TYPE_5__* name; TYPE_4__ u; } ;
struct compound_hdr {int dummy; } ;
typedef  void* __be32 ;
struct TYPE_12__ {int /*<<< orphan*/  attr_bitmask; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
#define  NF4BLK 130 
#define  NF4CHR 129 
#define  NF4LNK 128 
 int /*<<< orphan*/  OP_CREATE ; 
 int /*<<< orphan*/  XDRBUF_WRITE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decode_create_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int) ; 
 void** FUNC5 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct xdr_stream *xdr, const struct nfs4_create_arg *create, struct compound_hdr *hdr)
{
	__be32 *p;

	FUNC2(xdr, OP_CREATE, decode_create_maxsz, hdr);
	FUNC4(xdr, create->ftype);

	switch (create->ftype) {
	case NF4LNK:
		p = FUNC5(xdr, 4);
		*p = FUNC0(create->u.symlink.len);
		FUNC6(xdr, create->u.symlink.pages, 0,
				create->u.symlink.len);
		xdr->buf->flags |= XDRBUF_WRITE;
		break;

	case NF4BLK: case NF4CHR:
		p = FUNC5(xdr, 8);
		*p++ = FUNC0(create->u.device.specdata1);
		*p = FUNC0(create->u.device.specdata2);
		break;

	default:
		break;
	}

	FUNC3(xdr, create->name->len, create->name->name);
	FUNC1(xdr, create->attrs, create->label, &create->umask,
			create->server, create->server->attr_bitmask);
}