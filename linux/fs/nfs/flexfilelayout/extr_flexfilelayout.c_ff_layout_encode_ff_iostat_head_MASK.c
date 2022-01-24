#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct nfs42_layoutstat_devinfo {TYPE_1__ dev_id; int /*<<< orphan*/  write_bytes; int /*<<< orphan*/  write_count; int /*<<< orphan*/  read_bytes; int /*<<< orphan*/  read_count; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ nfs4_stateid ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_DEVICEID4_SIZE ; 
 int /*<<< orphan*/  NFS4_STATEID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static void
FUNC3(struct xdr_stream *xdr,
			    const nfs4_stateid *stateid,
			    const struct nfs42_layoutstat_devinfo *devinfo)
{
	__be32 *p;

	p = FUNC2(xdr, 8 + 8);
	p = FUNC1(p, devinfo->offset);
	p = FUNC1(p, devinfo->length);
	FUNC0(xdr, stateid->data, NFS4_STATEID_SIZE);
	p = FUNC2(xdr, 4*8);
	p = FUNC1(p, devinfo->read_count);
	p = FUNC1(p, devinfo->read_bytes);
	p = FUNC1(p, devinfo->write_count);
	p = FUNC1(p, devinfo->write_bytes);
	FUNC0(xdr, devinfo->dev_id.data, NFS4_DEVICEID4_SIZE);
}