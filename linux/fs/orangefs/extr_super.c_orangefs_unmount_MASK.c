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
struct TYPE_4__ {int id; int /*<<< orphan*/  orangefs_config_server; int /*<<< orphan*/  fs_id; } ;
struct TYPE_6__ {TYPE_1__ fs_umount; } ;
struct TYPE_5__ {TYPE_3__ req; } ;
struct orangefs_kernel_op_s {TYPE_2__ upcall; } ;
typedef  int /*<<< orphan*/  __s32 ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ORANGEFS_MAX_SERVER_ADDR_LEN ; 
 int /*<<< orphan*/  ORANGEFS_VFS_OP_FS_UMOUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct orangefs_kernel_op_s* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct orangefs_kernel_op_s*) ; 
 int FUNC3 (struct orangefs_kernel_op_s*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(int id, __s32 fs_id, const char *devname)
{
	struct orangefs_kernel_op_s *op;
	int r;
	op = FUNC1(ORANGEFS_VFS_OP_FS_UMOUNT);
	if (!op)
		return -ENOMEM;
	op->upcall.req.fs_umount.id = id;
	op->upcall.req.fs_umount.fs_id = fs_id;
	FUNC4(op->upcall.req.fs_umount.orangefs_config_server,
	    devname, ORANGEFS_MAX_SERVER_ADDR_LEN - 1);
	r = FUNC3(op, "orangefs_fs_umount", 0);
	/* Not much to do about an error here. */
	if (r)
		FUNC0("orangefs_unmount: service_operation %d\n", r);
	FUNC2(op);
	return r;
}