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
typedef  scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct TYPE_6__ {scalar_t__ minor; void* major; } ;
struct TYPE_4__ {void* blocks; void* blocksize; } ;
struct TYPE_5__ {TYPE_1__ nfs2; } ;
struct nfs_fattr {int mode; int /*<<< orphan*/  ctime; int /*<<< orphan*/  change_attr; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; void* fileid; TYPE_3__ fsid; TYPE_2__ du; int /*<<< orphan*/  rdev; void* size; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; void* nlink; int /*<<< orphan*/  valid; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ NFCHR ; 
 scalar_t__ NFS2_FIFO_DEV ; 
 int /*<<< orphan*/  NFS_ATTR_FATTR_V2 ; 
 int NFS_fattr_sz ; 
 int S_IFIFO ; 
 int S_IFMT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct user_namespace*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct user_namespace*,void*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC12(struct xdr_stream *xdr, struct nfs_fattr *fattr,
		struct user_namespace *userns)
{
	u32 rdev, type;
	__be32 *p;

	p = FUNC11(xdr, NFS_fattr_sz << 2);
	if (FUNC8(!p))
		return -EIO;

	fattr->valid |= NFS_ATTR_FATTR_V2;

	p = FUNC9(p, &type);

	fattr->mode = FUNC0(p++);
	fattr->nlink = FUNC0(p++);
	fattr->uid = FUNC4(userns, FUNC0(p++));
	if (!FUNC7(fattr->uid))
		goto out_uid;
	fattr->gid = FUNC3(userns, FUNC0(p++));
	if (!FUNC2(fattr->gid))
		goto out_gid;
		
	fattr->size = FUNC0(p++);
	fattr->du.nfs2.blocksize = FUNC0(p++);

	rdev = FUNC0(p++);
	fattr->rdev = FUNC5(rdev);
	if (type == (u32)NFCHR && rdev == (u32)NFS2_FIFO_DEV) {
		fattr->mode = (fattr->mode & ~S_IFMT) | S_IFIFO;
		fattr->rdev = 0;
	}

	fattr->du.nfs2.blocks = FUNC0(p++);
	fattr->fsid.major = FUNC0(p++);
	fattr->fsid.minor = 0;
	fattr->fileid = FUNC0(p++);

	p = FUNC10(p, &fattr->atime);
	p = FUNC10(p, &fattr->mtime);
	FUNC10(p, &fattr->ctime);
	fattr->change_attr = FUNC6(&fattr->ctime);

	return 0;
out_uid:
	FUNC1("NFS: returned invalid uid\n");
	return -EINVAL;
out_gid:
	FUNC1("NFS: returned invalid gid\n");
	return -EINVAL;
}