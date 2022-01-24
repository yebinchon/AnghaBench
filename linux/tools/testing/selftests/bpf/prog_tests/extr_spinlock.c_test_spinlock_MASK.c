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
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_SKB ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_object*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  spin_lock_thread ; 

void FUNC6(void)
{
	const char *file = "./test_spin_lock.o";
	pthread_t thread_id[4];
	struct bpf_object *obj = NULL;
	int prog_fd;
	int err = 0, i;
	void *ret;

	err = FUNC2(file, BPF_PROG_TYPE_CGROUP_SKB, &obj, &prog_fd);
	if (FUNC0(err)) {
		FUNC3("test_spin_lock:bpf_prog_load errno %d\n", errno);
		goto close_prog;
	}
	for (i = 0; i < 4; i++)
		if (FUNC0(FUNC4(&thread_id[i], NULL,
					      &spin_lock_thread, &prog_fd)))
			goto close_prog;

	for (i = 0; i < 4; i++)
		if (FUNC0(FUNC5(thread_id[i], &ret) ||
			       ret != (void *)&prog_fd))
			goto close_prog;
close_prog:
	FUNC1(obj);
}