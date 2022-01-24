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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 int BPF_FD_TYPE_RAW_TRACEPOINT ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_RAW_TRACEPOINT ; 
 scalar_t__ FUNC0 (int,char*,char*,int,...) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_object*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 int FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

void FUNC8(void)
{
	const char *file = "./test_get_stack_rawtp.o";
	__u64 probe_offset, probe_addr;
	__u32 len, prog_id, fd_type;
	struct bpf_object *obj;
	int efd, err, prog_fd;
	__u32 duration = 0;
	char buf[256];

	err = FUNC2(file, BPF_PROG_TYPE_RAW_TRACEPOINT, &obj, &prog_fd);
	if (FUNC0(err, "prog_load raw tp", "err %d errno %d\n", err, errno))
		return;

	efd = FUNC3("sys_enter", prog_fd);
	if (FUNC0(efd < 0, "raw_tp_open", "err %d errno %d\n", efd, errno))
		goto close_prog;

	/* query (getpid(), efd) */
	len = sizeof(buf);
	err = FUNC4(FUNC5(), efd, 0, buf, &len, &prog_id,
				&fd_type, &probe_offset, &probe_addr);
	if (FUNC0(err < 0, "bpf_task_fd_query", "err %d errno %d\n", err,
		  errno))
		goto close_prog;

	err = fd_type == BPF_FD_TYPE_RAW_TRACEPOINT &&
	      FUNC6(buf, "sys_enter") == 0;
	if (FUNC0(!err, "check_results", "fd_type %d tp_name %s\n",
		  fd_type, buf))
		goto close_prog;

	/* test zero len */
	len = 0;
	err = FUNC4(FUNC5(), efd, 0, buf, &len, &prog_id,
				&fd_type, &probe_offset, &probe_addr);
	if (FUNC0(err < 0, "bpf_task_fd_query (len = 0)", "err %d errno %d\n",
		  err, errno))
		goto close_prog;
	err = fd_type == BPF_FD_TYPE_RAW_TRACEPOINT &&
	      len == FUNC7("sys_enter");
	if (FUNC0(!err, "check_results", "fd_type %d len %u\n", fd_type, len))
		goto close_prog;

	/* test empty buffer */
	len = sizeof(buf);
	err = FUNC4(FUNC5(), efd, 0, 0, &len, &prog_id,
				&fd_type, &probe_offset, &probe_addr);
	if (FUNC0(err < 0, "bpf_task_fd_query (buf = 0)", "err %d errno %d\n",
		  err, errno))
		goto close_prog;
	err = fd_type == BPF_FD_TYPE_RAW_TRACEPOINT &&
	      len == FUNC7("sys_enter");
	if (FUNC0(!err, "check_results", "fd_type %d len %u\n", fd_type, len))
		goto close_prog;

	/* test smaller buffer */
	len = 3;
	err = FUNC4(FUNC5(), efd, 0, buf, &len, &prog_id,
				&fd_type, &probe_offset, &probe_addr);
	if (FUNC0(err >= 0 || errno != ENOSPC, "bpf_task_fd_query (len = 3)",
		  "err %d errno %d\n", err, errno))
		goto close_prog;
	err = fd_type == BPF_FD_TYPE_RAW_TRACEPOINT &&
	      len == FUNC7("sys_enter") &&
	      FUNC6(buf, "sy") == 0;
	if (FUNC0(!err, "check_results", "fd_type %d len %u\n", fd_type, len))
		goto close_prog;

close_prog:
	FUNC1(obj);
}