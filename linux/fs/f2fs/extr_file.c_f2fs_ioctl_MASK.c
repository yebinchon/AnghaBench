#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct file {int dummy; } ;

/* Variables and functions */
 long EIO ; 
 long ENOSPC ; 
 long ENOTTY ; 
#define  F2FS_IOC_ABORT_VOLATILE_WRITE 162 
#define  F2FS_IOC_COMMIT_ATOMIC_WRITE 161 
#define  F2FS_IOC_DEFRAGMENT 160 
#define  F2FS_IOC_FLUSH_DEVICE 159 
#define  F2FS_IOC_FSGETXATTR 158 
#define  F2FS_IOC_FSSETXATTR 157 
#define  F2FS_IOC_GARBAGE_COLLECT 156 
#define  F2FS_IOC_GARBAGE_COLLECT_RANGE 155 
#define  F2FS_IOC_GETFLAGS 154 
#define  F2FS_IOC_GETVERSION 153 
#define  F2FS_IOC_GET_ENCRYPTION_POLICY 152 
#define  F2FS_IOC_GET_ENCRYPTION_PWSALT 151 
#define  F2FS_IOC_GET_FEATURES 150 
#define  F2FS_IOC_GET_PIN_FILE 149 
#define  F2FS_IOC_GET_VOLUME_NAME 148 
#define  F2FS_IOC_MOVE_RANGE 147 
#define  F2FS_IOC_PRECACHE_EXTENTS 146 
#define  F2FS_IOC_RELEASE_VOLATILE_WRITE 145 
#define  F2FS_IOC_RESIZE_FS 144 
#define  F2FS_IOC_SETFLAGS 143 
#define  F2FS_IOC_SET_ENCRYPTION_POLICY 142 
#define  F2FS_IOC_SET_PIN_FILE 141 
#define  F2FS_IOC_SET_VOLUME_NAME 140 
#define  F2FS_IOC_SHUTDOWN 139 
#define  F2FS_IOC_START_ATOMIC_WRITE 138 
#define  F2FS_IOC_START_VOLATILE_WRITE 137 
#define  F2FS_IOC_WRITE_CHECKPOINT 136 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  FITRIM 135 
#define  FS_IOC_ADD_ENCRYPTION_KEY 134 
#define  FS_IOC_ENABLE_VERITY 133 
#define  FS_IOC_GET_ENCRYPTION_KEY_STATUS 132 
#define  FS_IOC_GET_ENCRYPTION_POLICY_EX 131 
#define  FS_IOC_MEASURE_VERITY 130 
#define  FS_IOC_REMOVE_ENCRYPTION_KEY 129 
#define  FS_IOC_REMOVE_ENCRYPTION_KEY_ALL_USERS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (struct file*,unsigned long) ; 
 long FUNC3 (struct file*) ; 
 long FUNC4 (struct file*,unsigned long) ; 
 long FUNC5 (struct file*) ; 
 long FUNC6 (struct file*,unsigned long) ; 
 long FUNC7 (struct file*,unsigned long) ; 
 long FUNC8 (struct file*,unsigned long) ; 
 long FUNC9 (struct file*,unsigned long) ; 
 long FUNC10 (struct file*,unsigned long) ; 
 long FUNC11 (struct file*,unsigned long) ; 
 long FUNC12 (struct file*,unsigned long) ; 
 long FUNC13 (struct file*,unsigned long) ; 
 long FUNC14 (struct file*,unsigned long) ; 
 long FUNC15 (struct file*,unsigned long) ; 
 long FUNC16 (struct file*,unsigned long) ; 
 long FUNC17 (struct file*,unsigned long) ; 
 long FUNC18 (struct file*,unsigned long) ; 
 long FUNC19 (struct file*,unsigned long) ; 
 long FUNC20 (struct file*,unsigned long) ; 
 long FUNC21 (struct file*,unsigned long) ; 
 long FUNC22 (struct file*,unsigned long) ; 
 long FUNC23 (struct file*,unsigned long) ; 
 long FUNC24 (struct file*,unsigned long) ; 
 long FUNC25 (struct file*) ; 
 long FUNC26 (struct file*,unsigned long) ; 
 long FUNC27 (struct file*,unsigned long) ; 
 long FUNC28 (struct file*,unsigned long) ; 
 long FUNC29 (struct file*,unsigned long) ; 
 long FUNC30 (struct file*,unsigned long) ; 
 long FUNC31 (struct file*,unsigned long) ; 
 long FUNC32 (struct file*,unsigned long) ; 
 long FUNC33 (struct file*) ; 
 long FUNC34 (struct file*) ; 
 long FUNC35 (struct file*,unsigned long) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 long FUNC37 (struct file*,unsigned long) ; 
 int /*<<< orphan*/  FUNC38 (struct file*) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ ) ; 

long FUNC40(struct file *filp, unsigned int cmd, unsigned long arg)
{
	if (FUNC39(FUNC1(FUNC0(FUNC38(filp)))))
		return -EIO;
	if (!FUNC36(FUNC0(FUNC38(filp))))
		return -ENOSPC;

	switch (cmd) {
	case F2FS_IOC_GETFLAGS:
		return FUNC20(filp, arg);
	case F2FS_IOC_SETFLAGS:
		return FUNC31(filp, arg);
	case F2FS_IOC_GETVERSION:
		return FUNC21(filp, arg);
	case F2FS_IOC_START_ATOMIC_WRITE:
		return FUNC33(filp);
	case F2FS_IOC_COMMIT_ATOMIC_WRITE:
		return FUNC5(filp);
	case F2FS_IOC_START_VOLATILE_WRITE:
		return FUNC34(filp);
	case F2FS_IOC_RELEASE_VOLATILE_WRITE:
		return FUNC25(filp);
	case F2FS_IOC_ABORT_VOLATILE_WRITE:
		return FUNC3(filp);
	case F2FS_IOC_SHUTDOWN:
		return FUNC32(filp, arg);
	case FITRIM:
		return FUNC8(filp, arg);
	case F2FS_IOC_SET_ENCRYPTION_POLICY:
		return FUNC29(filp, arg);
	case F2FS_IOC_GET_ENCRYPTION_POLICY:
		return FUNC15(filp, arg);
	case F2FS_IOC_GET_ENCRYPTION_PWSALT:
		return FUNC17(filp, arg);
	case FS_IOC_GET_ENCRYPTION_POLICY_EX:
		return FUNC16(filp, arg);
	case FS_IOC_ADD_ENCRYPTION_KEY:
		return FUNC4(filp, arg);
	case FS_IOC_REMOVE_ENCRYPTION_KEY:
		return FUNC26(filp, arg);
	case FS_IOC_REMOVE_ENCRYPTION_KEY_ALL_USERS:
		return FUNC27(filp, arg);
	case FS_IOC_GET_ENCRYPTION_KEY_STATUS:
		return FUNC14(filp, arg);
	case F2FS_IOC_GARBAGE_COLLECT:
		return FUNC12(filp, arg);
	case F2FS_IOC_GARBAGE_COLLECT_RANGE:
		return FUNC13(filp, arg);
	case F2FS_IOC_WRITE_CHECKPOINT:
		return FUNC35(filp, arg);
	case F2FS_IOC_DEFRAGMENT:
		return FUNC6(filp, arg);
	case F2FS_IOC_MOVE_RANGE:
		return FUNC23(filp, arg);
	case F2FS_IOC_FLUSH_DEVICE:
		return FUNC9(filp, arg);
	case F2FS_IOC_GET_FEATURES:
		return FUNC18(filp, arg);
	case F2FS_IOC_FSGETXATTR:
		return FUNC10(filp, arg);
	case F2FS_IOC_FSSETXATTR:
		return FUNC11(filp, arg);
	case F2FS_IOC_GET_PIN_FILE:
		return FUNC19(filp, arg);
	case F2FS_IOC_SET_PIN_FILE:
		return FUNC30(filp, arg);
	case F2FS_IOC_PRECACHE_EXTENTS:
		return FUNC24(filp, arg);
	case F2FS_IOC_RESIZE_FS:
		return FUNC28(filp, arg);
	case FS_IOC_ENABLE_VERITY:
		return FUNC7(filp, arg);
	case FS_IOC_MEASURE_VERITY:
		return FUNC22(filp, arg);
	case F2FS_IOC_GET_VOLUME_NAME:
		return FUNC2(filp, arg);
	case F2FS_IOC_SET_VOLUME_NAME:
		return FUNC37(filp, arg);
	default:
		return -ENOTTY;
	}
}