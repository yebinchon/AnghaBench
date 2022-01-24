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
struct io_kiocb {int flags; int /*<<< orphan*/  file; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int REQ_F_ISREG ; 
 int /*<<< orphan*/  SB_FREEZE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct io_kiocb *req)
{
	/*
	 * Tell lockdep we inherited freeze protection from submission
	 * thread.
	 */
	if (req->flags & REQ_F_ISREG) {
		struct inode *inode = FUNC2(req->file);

		FUNC0(inode->i_sb, SB_FREEZE_WRITE);
	}
	FUNC1(req->file);
}