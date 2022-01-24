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
typedef  int /*<<< orphan*/  u16 ;
struct file {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_OPT_NONE ; 
 int /*<<< orphan*/  CAP_SYS_TTY_CONFIG ; 
#define  FIBMAP 138 
#define  FIGETBSZ 137 
 int /*<<< orphan*/  FILE__GETATTR ; 
 int /*<<< orphan*/  FILE__IOCTL ; 
 int /*<<< orphan*/  FILE__SETATTR ; 
#define  FIOASYNC 136 
#define  FIONBIO 135 
#define  FIONREAD 134 
#define  FS_IOC_GETFLAGS 133 
#define  FS_IOC_GETVERSION 132 
#define  FS_IOC_SETFLAGS 131 
#define  FS_IOC_SETVERSION 130 
#define  KDSKBENT 129 
#define  KDSKBSENT 128 
 int FUNC0 (struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cred* FUNC1 () ; 
 int FUNC2 (struct cred const*,struct file*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cred const*,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, unsigned int cmd,
			      unsigned long arg)
{
	const struct cred *cred = FUNC1();
	int error = 0;

	switch (cmd) {
	case FIONREAD:
	/* fall through */
	case FIBMAP:
	/* fall through */
	case FIGETBSZ:
	/* fall through */
	case FS_IOC_GETFLAGS:
	/* fall through */
	case FS_IOC_GETVERSION:
		error = FUNC2(cred, file, FILE__GETATTR);
		break;

	case FS_IOC_SETFLAGS:
	/* fall through */
	case FS_IOC_SETVERSION:
		error = FUNC2(cred, file, FILE__SETATTR);
		break;

	/* sys_ioctl() checks */
	case FIONBIO:
	/* fall through */
	case FIOASYNC:
		error = FUNC2(cred, file, 0);
		break;

	case KDSKBENT:
	case KDSKBSENT:
		error = FUNC0(cred, CAP_SYS_TTY_CONFIG,
					    CAP_OPT_NONE, true);
		break;

	/* default case assumes that the command will go
	 * to the file's ioctl() function.
	 */
	default:
		error = FUNC3(cred, file, FILE__IOCTL, (u16) cmd);
	}
	return error;
}