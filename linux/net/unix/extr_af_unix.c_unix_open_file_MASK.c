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
struct sock {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  user_ns; } ;
struct TYPE_3__ {struct path path; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENOENT ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  O_PATH ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct file* FUNC3 (struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct file*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (struct sock*) ; 
 TYPE_1__* FUNC12 (struct sock*) ; 

__attribute__((used)) static int FUNC13(struct sock *sk)
{
	struct path path;
	struct file *f;
	int fd;

	if (!FUNC6(FUNC11(sk)->user_ns, CAP_NET_ADMIN))
		return -EPERM;

	if (!FUNC10(&FUNC12(sk)->addr))
		return -ENOENT;

	path = FUNC12(sk)->path;
	if (!path.dentry)
		return -ENOENT;

	FUNC7(&path);

	fd = FUNC5(O_CLOEXEC);
	if (fd < 0)
		goto out;

	f = FUNC3(&path, O_PATH, FUNC2());
	if (FUNC0(f)) {
		FUNC9(fd);
		fd = FUNC1(f);
		goto out;
	}

	FUNC4(fd, f);
out:
	FUNC8(&path);

	return fd;
}