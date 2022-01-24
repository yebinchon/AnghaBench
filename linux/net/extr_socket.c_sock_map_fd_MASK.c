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
struct socket {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct file*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct file* FUNC5 (struct socket*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, int flags)
{
	struct file *newfile;
	int fd = FUNC3(flags);
	if (FUNC7(fd < 0)) {
		FUNC6(sock);
		return fd;
	}

	newfile = FUNC5(sock, flags, NULL);
	if (!FUNC0(newfile)) {
		FUNC2(fd, newfile);
		return fd;
	}

	FUNC4(fd);
	return FUNC1(newfile);
}