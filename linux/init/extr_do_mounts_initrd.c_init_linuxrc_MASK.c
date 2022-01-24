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
struct subprocess_info {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int CLONE_FILES ; 
 int CLONE_FS ; 
 int /*<<< orphan*/  MS_MOVE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct subprocess_info *info, struct cred *new)
{
	FUNC6(CLONE_FS | CLONE_FILES);
	/* stdin/stdout/stderr for /linuxrc */
	FUNC4("/dev/console", O_RDWR, 0);
	FUNC2(0);
	FUNC2(0);
	/* move initrd over / and chdir/chroot in initrd root */
	FUNC0("/root");
	FUNC3(".", "/", NULL, MS_MOVE, NULL);
	FUNC1(".");
	FUNC5();
	return 0;
}