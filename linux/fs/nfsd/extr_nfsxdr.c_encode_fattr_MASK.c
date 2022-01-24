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
typedef  int u32 ;
struct user_namespace {int dummy; } ;
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
struct svc_rqst {int dummy; } ;
struct svc_fh {TYPE_1__* fh_export; struct dentry* fh_dentry; } ;
struct TYPE_6__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct kstat {int mode; scalar_t__ size; TYPE_3__ ctime; struct timespec64 mtime; TYPE_2__ atime; scalar_t__ ino; int /*<<< orphan*/  dev; scalar_t__ blocks; int /*<<< orphan*/  rdev; scalar_t__ blksize; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; scalar_t__ nlink; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ ex_uuid; scalar_t__ ex_fsid; } ;

/* Variables and functions */
#define  FSIDSOURCE_DEV 130 
#define  FSIDSOURCE_FSID 129 
#define  FSIDSOURCE_UUID 128 
 scalar_t__ NFS_MAXPATHLEN ; 
 int S_IFMT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct svc_fh*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct timespec64*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int* nfs_ftypes ; 
 struct user_namespace* FUNC10 (struct svc_rqst*) ; 

__attribute__((used)) static __be32 *
FUNC11(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp,
	     struct kstat *stat)
{
	struct user_namespace *userns = FUNC10(rqstp);
	struct dentry	*dentry = fhp->fh_dentry;
	int type;
	struct timespec64 time;
	u32 f;

	type = (stat->mode & S_IFMT);

	*p++ = FUNC7(nfs_ftypes[type >> 12]);
	*p++ = FUNC7((u32) stat->mode);
	*p++ = FUNC7((u32) stat->nlink);
	*p++ = FUNC7((u32) FUNC5(userns, stat->uid));
	*p++ = FUNC7((u32) FUNC4(userns, stat->gid));

	if (FUNC2(type) && stat->size > NFS_MAXPATHLEN) {
		*p++ = FUNC7(NFS_MAXPATHLEN);
	} else {
		*p++ = FUNC7((u32) stat->size);
	}
	*p++ = FUNC7((u32) stat->blksize);
	if (FUNC1(type) || FUNC0(type))
		*p++ = FUNC7(FUNC9(stat->rdev));
	else
		*p++ = FUNC7(0xffffffff);
	*p++ = FUNC7((u32) stat->blocks);
	switch (FUNC6(fhp)) {
	default:
	case FSIDSOURCE_DEV:
		*p++ = FUNC7(FUNC9(stat->dev));
		break;
	case FSIDSOURCE_FSID:
		*p++ = FUNC7((u32) fhp->fh_export->ex_fsid);
		break;
	case FSIDSOURCE_UUID:
		f = ((u32*)fhp->fh_export->ex_uuid)[0];
		f ^= ((u32*)fhp->fh_export->ex_uuid)[1];
		f ^= ((u32*)fhp->fh_export->ex_uuid)[2];
		f ^= ((u32*)fhp->fh_export->ex_uuid)[3];
		*p++ = FUNC7(f);
		break;
	}
	*p++ = FUNC7((u32) stat->ino);
	*p++ = FUNC7((u32) stat->atime.tv_sec);
	*p++ = FUNC7(stat->atime.tv_nsec ? stat->atime.tv_nsec / 1000 : 0);
	time = stat->mtime;
	FUNC8(FUNC3(dentry), &time); 
	*p++ = FUNC7((u32) time.tv_sec);
	*p++ = FUNC7(time.tv_nsec ? time.tv_nsec / 1000 : 0); 
	*p++ = FUNC7((u32) stat->ctime.tv_sec);
	*p++ = FUNC7(stat->ctime.tv_nsec ? stat->ctime.tv_nsec / 1000 : 0);

	return p;
}