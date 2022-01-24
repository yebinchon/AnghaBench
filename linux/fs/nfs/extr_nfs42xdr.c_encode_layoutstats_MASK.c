#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct nfs42_layoutstat_devinfo {TYPE_3__ ld_private; int /*<<< orphan*/  layout_type; TYPE_1__ dev_id; int /*<<< orphan*/  write_bytes; int /*<<< orphan*/  write_count; int /*<<< orphan*/  read_bytes; int /*<<< orphan*/  read_count; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct nfs42_layoutstat_args {int /*<<< orphan*/  stateid; } ;
struct compound_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_5__ {int /*<<< orphan*/  (* encode ) (struct xdr_stream*,struct nfs42_layoutstat_args const*,TYPE_3__*) ;} ;

/* Variables and functions */
 int NFS4_DEVICEID4_SIZE ; 
 int /*<<< orphan*/  OP_LAYOUTSTATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decode_layoutstats_maxsz ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,struct nfs42_layoutstat_args const*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct xdr_stream *xdr,
			       const struct nfs42_layoutstat_args *args,
			       struct nfs42_layoutstat_devinfo *devinfo,
			       struct compound_hdr *hdr)
{
	__be32 *p;

	FUNC2(xdr, OP_LAYOUTSTATS, decode_layoutstats_maxsz, hdr);
	p = FUNC4(xdr, 8 + 8);
	p = FUNC6(p, devinfo->offset);
	p = FUNC6(p, devinfo->length);
	FUNC1(xdr, &args->stateid);
	p = FUNC4(xdr, 4*8 + NFS4_DEVICEID4_SIZE + 4);
	p = FUNC6(p, devinfo->read_count);
	p = FUNC6(p, devinfo->read_bytes);
	p = FUNC6(p, devinfo->write_count);
	p = FUNC6(p, devinfo->write_bytes);
	p = FUNC7(p, devinfo->dev_id.data,
			NFS4_DEVICEID4_SIZE);
	/* Encode layoutupdate4 */
	*p++ = FUNC0(devinfo->layout_type);
	if (devinfo->ld_private.ops)
		devinfo->ld_private.ops->encode(xdr, args,
				&devinfo->ld_private);
	else
		FUNC3(xdr, 0);
}