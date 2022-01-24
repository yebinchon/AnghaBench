#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct TYPE_7__ {TYPE_2__* plh_inode; } ;
struct nfs4_flexfile_layout {TYPE_3__ generic_hdr; } ;
struct nfs4_ff_layout_mirror {TYPE_4__* mirror_ds; int /*<<< orphan*/  stateid; } ;
struct nfs4_ff_layout_ds_err {int status; int opnum; int /*<<< orphan*/  deviceid; int /*<<< orphan*/  stateid; void* length; void* offset; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nfs_opnum4 { ____Placeholder_nfs_opnum4 } nfs_opnum4 ;
struct TYPE_5__ {int /*<<< orphan*/  deviceid; } ;
struct TYPE_8__ {TYPE_1__ id_node; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  NFS4_DEVICEID4_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_flexfile_layout*,struct nfs4_ff_layout_ds_err*) ; 
 struct nfs4_ff_layout_ds_err* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct nfs4_flexfile_layout *flo,
			     struct nfs4_ff_layout_mirror *mirror, u64 offset,
			     u64 length, int status, enum nfs_opnum4 opnum,
			     gfp_t gfp_flags)
{
	struct nfs4_ff_layout_ds_err *dserr;

	if (status == 0)
		return 0;

	if (FUNC1(mirror->mirror_ds))
		return -EINVAL;

	dserr = FUNC3(sizeof(*dserr), gfp_flags);
	if (!dserr)
		return -ENOMEM;

	FUNC0(&dserr->list);
	dserr->offset = offset;
	dserr->length = length;
	dserr->status = status;
	dserr->opnum = opnum;
	FUNC5(&dserr->stateid, &mirror->stateid);
	FUNC4(&dserr->deviceid, &mirror->mirror_ds->id_node.deviceid,
	       NFS4_DEVICEID4_SIZE);

	FUNC6(&flo->generic_hdr.plh_inode->i_lock);
	FUNC2(flo, dserr);
	FUNC7(&flo->generic_hdr.plh_inode->i_lock);
	return 0;
}