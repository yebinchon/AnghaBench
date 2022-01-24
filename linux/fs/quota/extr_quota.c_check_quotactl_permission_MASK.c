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
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  qid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 int GRPQUOTA ; 
#define  Q_GETFMT 135 
#define  Q_GETINFO 134 
#define  Q_GETQUOTA 133 
#define  Q_SYNC 132 
#define  Q_XGETQSTAT 131 
#define  Q_XGETQSTATV 130 
#define  Q_XGETQUOTA 129 
#define  Q_XQUOTASYNC 128 
 int USRQUOTA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ,struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb, int type, int cmd,
				     qid_t id)
{
	switch (cmd) {
	/* these commands do not require any special privilegues */
	case Q_GETFMT:
	case Q_SYNC:
	case Q_GETINFO:
	case Q_XGETQSTAT:
	case Q_XGETQSTATV:
	case Q_XQUOTASYNC:
		break;
	/* allow to query information for dquots we "own" */
	case Q_GETQUOTA:
	case Q_XGETQUOTA:
		if ((type == USRQUOTA && FUNC7(FUNC1(), FUNC5(FUNC2(), id))) ||
		    (type == GRPQUOTA && FUNC3(FUNC4(FUNC2(), id))))
			break;
		/*FALLTHROUGH*/
	default:
		if (!FUNC0(CAP_SYS_ADMIN))
			return -EPERM;
	}

	return FUNC6(cmd, type, id, sb);
}