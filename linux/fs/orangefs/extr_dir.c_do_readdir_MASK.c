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
struct orangefs_readdir_response_s {int /*<<< orphan*/  token; } ;
struct TYPE_8__ {int status; scalar_t__ trailer_size; scalar_t__ trailer_buf; } ;
struct TYPE_5__ {int buf_index; int /*<<< orphan*/  max_dirent_count; int /*<<< orphan*/  token; int /*<<< orphan*/  refn; } ;
struct TYPE_6__ {TYPE_1__ readdir; } ;
struct TYPE_7__ {TYPE_2__ req; } ;
struct orangefs_kernel_op_s {int uses_shared_memory; TYPE_4__ downcall; TYPE_3__ upcall; } ;
struct orangefs_inode_s {int /*<<< orphan*/  refn; } ;
struct orangefs_dir {int error; int /*<<< orphan*/  token; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  ORANGEFS_MAX_DIRENT_COUNT_READDIR ; 
 scalar_t__ PART_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct orangefs_kernel_op_s*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct orangefs_kernel_op_s*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct orangefs_inode_s *oi,
    struct orangefs_dir *od, struct dentry *dentry,
    struct orangefs_kernel_op_s *op)
{
	struct orangefs_readdir_response_s *resp;
	int bufi, r;

	/*
	 * Despite the badly named field, readdir does not use shared
	 * memory.  However, there are a limited number of readdir
	 * slots, which must be allocated here.  This flag simply tells
	 * the op scheduler to return the op here for retry.
	 */
	op->uses_shared_memory = 1;
	op->upcall.req.readdir.refn = oi->refn;
	op->upcall.req.readdir.token = od->token;
	op->upcall.req.readdir.max_dirent_count =
	    ORANGEFS_MAX_DIRENT_COUNT_READDIR;

again:
	bufi = FUNC2();
	if (bufi < 0) {
		od->error = bufi;
		return bufi;
	}

	op->upcall.req.readdir.buf_index = bufi;

	r = FUNC4(op, "orangefs_readdir",
	    FUNC0(dentry->d_inode));

	FUNC3(bufi);

	if (FUNC1(op)) {
		if (r == -EAGAIN) {
			FUNC5(op->downcall.trailer_buf);
			goto again;
		} else if (r == -EIO) {
			FUNC5(op->downcall.trailer_buf);
			od->error = r;
			return r;
		}
	}

	if (r < 0) {
		FUNC5(op->downcall.trailer_buf);
		od->error = r;
		return r;
	} else if (op->downcall.status) {
		FUNC5(op->downcall.trailer_buf);
		od->error = op->downcall.status;
		return op->downcall.status;
	}

	/*
	 * The maximum size is size per entry times the 512 entries plus
	 * the header.  This is well under the limit.
	 */
	if (op->downcall.trailer_size > PART_SIZE) {
		FUNC5(op->downcall.trailer_buf);
		od->error = -EIO;
		return -EIO;
	}

	resp = (struct orangefs_readdir_response_s *)
	    op->downcall.trailer_buf;
	od->token = resp->token;
	return 0;
}