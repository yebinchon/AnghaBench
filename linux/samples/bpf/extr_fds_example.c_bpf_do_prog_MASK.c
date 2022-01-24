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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  fd ;

/* Variables and functions */
 int BPF_F_PIN ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ATTACH_BPF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int,char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *file, uint32_t flags, const char *object)
{
	int fd, sock, ret;

	if (flags & BPF_F_PIN) {
		fd = FUNC3(object);
		FUNC5("bpf: prog fd:%d (%s)\n", fd, FUNC7(errno));
		FUNC0(fd > 0);

		ret = FUNC2(fd, file);
		FUNC5("bpf: pin ret:(%d,%s)\n", ret, FUNC7(errno));
		FUNC0(ret == 0);
	} else {
		fd = FUNC1(file);
		FUNC5("bpf: get fd:%d (%s)\n", fd, FUNC7(errno));
		FUNC0(fd > 0);
	}

	sock = FUNC4("lo");
	FUNC0(sock > 0);

	ret = FUNC6(sock, SOL_SOCKET, SO_ATTACH_BPF, &fd, sizeof(fd));
	FUNC5("bpf: sock:%d <- fd:%d attached ret:(%d,%s)\n", sock, fd,
	       ret, FUNC7(errno));
	FUNC0(ret == 0);

	return 0;
}