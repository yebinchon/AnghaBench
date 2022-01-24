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

/* Variables and functions */
 int BPF_F_KEY ; 
 int BPF_F_KEY_VAL ; 
 int BPF_F_PIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 (int,int*,int*) ; 
 int FUNC3 (int,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (int,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *file, uint32_t flags, uint32_t key,
		      uint32_t value)
{
	int fd, ret;

	if (flags & BPF_F_PIN) {
		fd = FUNC1();
		FUNC6("bpf: map fd:%d (%s)\n", fd, FUNC7(errno));
		FUNC0(fd > 0);

		ret = FUNC5(fd, file);
		FUNC6("bpf: pin ret:(%d,%s)\n", ret, FUNC7(errno));
		FUNC0(ret == 0);
	} else {
		fd = FUNC4(file);
		FUNC6("bpf: get fd:%d (%s)\n", fd, FUNC7(errno));
		FUNC0(fd > 0);
	}

	if ((flags & BPF_F_KEY_VAL) == BPF_F_KEY_VAL) {
		ret = FUNC3(fd, &key, &value, 0);
		FUNC6("bpf: fd:%d u->(%u:%u) ret:(%d,%s)\n", fd, key, value,
		       ret, FUNC7(errno));
		FUNC0(ret == 0);
	} else if (flags & BPF_F_KEY) {
		ret = FUNC2(fd, &key, &value);
		FUNC6("bpf: fd:%d l->(%u):%u ret:(%d,%s)\n", fd, key, value,
		       ret, FUNC7(errno));
		FUNC0(ret == 0);
	}

	return 0;
}