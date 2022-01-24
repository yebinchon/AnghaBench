#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * val; } ;
struct fanotify_fid {int /*<<< orphan*/ * ext_fh; TYPE_1__ fsid; } ;
struct fanotify_event {int fh_len; struct fanotify_fid fid; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  TYPE_1__ __kernel_fsid_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FANOTIFY_INLINE_FH_LEN ; 
 int FILEID_INVALID ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct fanotify_fid*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct fanotify_event *event,
			       struct inode *inode, gfp_t gfp,
			       __kernel_fsid_t *fsid)
{
	struct fanotify_fid *fid = &event->fid;
	int dwords, bytes = 0;
	int err, type;

	fid->ext_fh = NULL;
	dwords = 0;
	err = -ENOENT;
	type = FUNC0(inode, NULL, &dwords, NULL);
	if (!dwords)
		goto out_err;

	bytes = dwords << 2;
	if (bytes > FANOTIFY_INLINE_FH_LEN) {
		/* Treat failure to allocate fh as failure to allocate event */
		err = -ENOMEM;
		fid->ext_fh = FUNC3(bytes, gfp);
		if (!fid->ext_fh)
			goto out_err;
	}

	type = FUNC0(inode, FUNC1(fid, bytes),
					&dwords, NULL);
	err = -EINVAL;
	if (!type || type == FILEID_INVALID || bytes != dwords << 2)
		goto out_err;

	fid->fsid = *fsid;
	event->fh_len = bytes;

	return type;

out_err:
	FUNC4("fanotify: failed to encode fid (fsid=%x.%x, "
			    "type=%d, bytes=%d, err=%i)\n",
			    fsid->val[0], fsid->val[1], type, bytes, err);
	FUNC2(fid->ext_fh);
	fid->ext_fh = NULL;
	event->fh_len = 0;

	return FILEID_INVALID;
}