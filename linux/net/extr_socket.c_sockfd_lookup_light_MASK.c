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
struct fd {int flags; scalar_t__ file; } ;

/* Variables and functions */
 int EBADF ; 
 struct fd FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fd) ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 struct socket* FUNC3 (scalar_t__,int*) ; 

__attribute__((used)) static struct socket *FUNC4(int fd, int *err, int *fput_needed)
{
	struct fd f = FUNC0(fd);
	struct socket *sock;

	*err = -EBADF;
	if (f.file) {
		sock = FUNC3(f.file, err);
		if (FUNC2(sock)) {
			*fput_needed = f.flags;
			return sock;
		}
		FUNC1(f);
	}
	return NULL;
}