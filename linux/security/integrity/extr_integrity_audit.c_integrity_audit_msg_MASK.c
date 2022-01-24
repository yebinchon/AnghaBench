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
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  uid; } ;
struct TYPE_3__ {unsigned char const* s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,char*,...) ; 
 struct audit_buffer* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct audit_buffer*,unsigned char const*) ; 
 int /*<<< orphan*/  current ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned char const* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  integrity_audit_info ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(int audit_msgno, struct inode *inode,
			 const unsigned char *fname, const char *op,
			 const char *cause, int result, int audit_info)
{
	struct audit_buffer *ab;
	char name[TASK_COMM_LEN];

	if (!integrity_audit_info && audit_info == 1)	/* Skip info messages */
		return;

	ab = FUNC5(FUNC0(), GFP_KERNEL, audit_msgno);
	FUNC4(ab, "pid=%d uid=%u auid=%u ses=%u",
			 FUNC11(current),
			 FUNC9(&init_user_ns, FUNC8()->uid),
			 FUNC9(&init_user_ns, FUNC1(current)),
			 FUNC2(current));
	FUNC6(ab);
	FUNC4(ab, " op=%s cause=%s comm=", op, cause);
	FUNC7(ab, FUNC10(name, current));
	if (fname) {
		FUNC4(ab, " name=");
		FUNC7(ab, fname);
	}
	if (inode) {
		FUNC4(ab, " dev=");
		FUNC7(ab, inode->i_sb->s_id);
		FUNC4(ab, " ino=%lu", inode->i_ino);
	}
	FUNC4(ab, " res=%d", !result);
	FUNC3(ab);
}