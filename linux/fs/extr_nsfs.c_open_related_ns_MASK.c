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
struct path {int dummy; } ;
typedef  void ns_common ;
typedef  void file ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (struct path*,void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,void*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(struct ns_common *ns,
		   struct ns_common *(*get_ns)(struct ns_common *ns))
{
	struct path path = {};
	struct file *f;
	void *err;
	int fd;

	fd = FUNC7(O_CLOEXEC);
	if (fd < 0)
		return fd;

	do {
		struct ns_common *relative;

		relative = get_ns(ns);
		if (FUNC1(relative)) {
			FUNC9(fd);
			return FUNC2(relative);
		}

		err = FUNC3(&path, relative);
	} while (err == FUNC0(-EAGAIN));

	if (FUNC1(err)) {
		FUNC9(fd);
		return FUNC2(err);
	}

	f = FUNC5(&path, O_RDONLY, FUNC4());
	FUNC8(&path);
	if (FUNC1(f)) {
		FUNC9(fd);
		fd = FUNC2(f);
	} else
		FUNC6(fd, f);

	return fd;
}