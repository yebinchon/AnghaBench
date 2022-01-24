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
struct page {int dummy; } ;
struct TYPE_7__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {void* tv_nsec; void* tv_sec; } ;
struct inode {TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; void* i_mode; } ;
struct f2fs_inode {int i_inline; char* i_name; int /*<<< orphan*/  i_gc_failures; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_advise; int /*<<< orphan*/  i_mtime_nsec; int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_atime_nsec; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_projid; int /*<<< orphan*/  i_extra_isize; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
typedef  scalar_t__ projid_t ;
typedef  int /*<<< orphan*/  kprojid_t ;
struct TYPE_8__ {void** i_gc_failures; void* i_flags; int /*<<< orphan*/  i_advise; int /*<<< orphan*/  i_projid; } ;

/* Variables and functions */
 int F2FS_EXTRA_ATTR ; 
 scalar_t__ FUNC0 (struct f2fs_inode*,void*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 struct f2fs_inode* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 size_t GC_FAILURE_PIN ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,void*) ; 
 int /*<<< orphan*/  i_projid ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,void*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,struct f2fs_inode*) ; 
 int FUNC20 (struct inode*,struct page*) ; 

__attribute__((used)) static int FUNC21(struct inode *inode, struct page *page)
{
	struct f2fs_inode *raw = FUNC2(page);
	char *name;
	int err;

	inode->i_mode = FUNC14(raw->i_mode);

	err = FUNC20(inode, page);
	if (err)
		return err;

	FUNC12(inode, FUNC15(raw->i_uid));
	FUNC11(inode, FUNC15(raw->i_gid));

	if (raw->i_inline & F2FS_EXTRA_ATTR) {
		if (FUNC7(FUNC3(inode)) &&
			FUNC0(raw, FUNC14(raw->i_extra_isize),
								i_projid)) {
			projid_t i_projid;
			kprojid_t kprojid;

			i_projid = (projid_t)FUNC15(raw->i_projid);
			kprojid = FUNC17(&init_user_ns, i_projid);

			if (!FUNC18(kprojid, FUNC1(inode)->i_projid)) {
				err = FUNC9(inode,
								kprojid);
				if (err)
					return err;
				FUNC1(inode)->i_projid = kprojid;
			}
		}
	}

	FUNC4(inode, FUNC16(raw->i_size));
	inode->i_atime.tv_sec = FUNC16(raw->i_atime);
	inode->i_ctime.tv_sec = FUNC16(raw->i_ctime);
	inode->i_mtime.tv_sec = FUNC16(raw->i_mtime);
	inode->i_atime.tv_nsec = FUNC15(raw->i_atime_nsec);
	inode->i_ctime.tv_nsec = FUNC15(raw->i_ctime_nsec);
	inode->i_mtime.tv_nsec = FUNC15(raw->i_mtime_nsec);

	FUNC1(inode)->i_advise = raw->i_advise;
	FUNC1(inode)->i_flags = FUNC15(raw->i_flags);
	FUNC8(inode);
	FUNC1(inode)->i_gc_failures[GC_FAILURE_PIN] =
				FUNC14(raw->i_gc_failures);

	FUNC19(inode, raw);

	FUNC5(inode, true);

	if (FUNC10(inode))
		name = "<encrypted>";
	else
		name = FUNC2(page)->i_name;

	FUNC6(FUNC3(inode), "recover_inode: ino = %x, name = %s, inline = %x",
		    FUNC13(page), name, raw->i_inline);
	return 0;
}