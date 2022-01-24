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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  fh_base; int /*<<< orphan*/  fh_size; } ;
struct svc_fh {TYPE_1__ fh_handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct pnfs_ff_layout {int flags; TYPE_2__ fh; int /*<<< orphan*/  deviceid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct nfsd4_layout_seg {scalar_t__ iomode; scalar_t__ length; scalar_t__ offset; } ;
struct nfsd4_layoutget {struct pnfs_ff_layout* lg_content; struct nfsd4_layout_seg lg_seg; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int FF_FLAGS_NO_IO_THRU_MDS ; 
 int FF_FLAGS_NO_LAYOUTCOMMIT ; 
 int FF_FLAGS_NO_READ_IO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IOMODE_READ ; 
 scalar_t__ NFS4_MAX_UINT64 ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct pnfs_ff_layout* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct svc_fh const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static __be32
FUNC7(struct inode *inode, const struct svc_fh *fhp,
		struct nfsd4_layoutget *args)
{
	struct nfsd4_layout_seg *seg = &args->lg_seg;
	u32 device_generation = 0;
	int error;
	uid_t u;

	struct pnfs_ff_layout *fl;

	/*
	 * The super simple flex file server has 1 mirror, 1 data server,
	 * and 1 file handle. So instead of 4 allocs, do 1 for now.
	 * Zero it out for the stateid - don't want junk in there!
	 */
	error = -ENOMEM;
	fl = FUNC2(sizeof(*fl), GFP_KERNEL);
	if (!fl)
		goto out_error;
	args->lg_content = fl;

	/*
	 * Avoid layout commit, try to force the I/O to the DS,
	 * and for fun, cause all IOMODE_RW layout segments to
	 * effectively be WRITE only.
	 */
	fl->flags = FF_FLAGS_NO_LAYOUTCOMMIT | FF_FLAGS_NO_IO_THRU_MDS |
		    FF_FLAGS_NO_READ_IO;

	/* Do not allow a IOMODE_READ segment to have write pemissions */
	if (seg->iomode == IOMODE_READ) {
		u = FUNC1(&init_user_ns, inode->i_uid) + 1;
		fl->uid = FUNC3(&init_user_ns, u);
	} else
		fl->uid = inode->i_uid;
	fl->gid = inode->i_gid;

	error = FUNC5(&fl->deviceid, fhp, device_generation);
	if (error)
		goto out_error;

	fl->fh.size = fhp->fh_handle.fh_size;
	FUNC4(fl->fh.data, &fhp->fh_handle.fh_base, fl->fh.size);

	/* Give whole file layout segments */
	seg->offset = 0;
	seg->length = NFS4_MAX_UINT64;

	FUNC0("GET: 0x%llx:0x%llx %d\n", seg->offset, seg->length,
		seg->iomode);
	return 0;

out_error:
	seg->length = 0;
	return FUNC6(error);
}