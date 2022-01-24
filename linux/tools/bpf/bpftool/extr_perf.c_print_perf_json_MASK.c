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
typedef  int /*<<< orphan*/  __u64 ;
typedef  int __u32 ;

/* Variables and functions */
#define  BPF_FD_TYPE_KPROBE 133 
#define  BPF_FD_TYPE_KRETPROBE 132 
#define  BPF_FD_TYPE_RAW_TRACEPOINT 131 
#define  BPF_FD_TYPE_TRACEPOINT 130 
#define  BPF_FD_TYPE_UPROBE 129 
#define  BPF_FD_TYPE_URETPROBE 128 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC6(int pid, int fd, __u32 prog_id, __u32 fd_type,
			    char *buf, __u64 probe_offset, __u64 probe_addr)
{
	FUNC3(json_wtr);
	FUNC1(json_wtr, "pid", pid);
	FUNC1(json_wtr, "fd", fd);
	FUNC5(json_wtr, "prog_id", prog_id);
	switch (fd_type) {
	case BPF_FD_TYPE_RAW_TRACEPOINT:
		FUNC4(json_wtr, "fd_type", "raw_tracepoint");
		FUNC4(json_wtr, "tracepoint", buf);
		break;
	case BPF_FD_TYPE_TRACEPOINT:
		FUNC4(json_wtr, "fd_type", "tracepoint");
		FUNC4(json_wtr, "tracepoint", buf);
		break;
	case BPF_FD_TYPE_KPROBE:
		FUNC4(json_wtr, "fd_type", "kprobe");
		if (buf[0] != '\0') {
			FUNC4(json_wtr, "func", buf);
			FUNC2(json_wtr, "offset", probe_offset);
		} else {
			FUNC2(json_wtr, "addr", probe_addr);
		}
		break;
	case BPF_FD_TYPE_KRETPROBE:
		FUNC4(json_wtr, "fd_type", "kretprobe");
		if (buf[0] != '\0') {
			FUNC4(json_wtr, "func", buf);
			FUNC2(json_wtr, "offset", probe_offset);
		} else {
			FUNC2(json_wtr, "addr", probe_addr);
		}
		break;
	case BPF_FD_TYPE_UPROBE:
		FUNC4(json_wtr, "fd_type", "uprobe");
		FUNC4(json_wtr, "filename", buf);
		FUNC2(json_wtr, "offset", probe_offset);
		break;
	case BPF_FD_TYPE_URETPROBE:
		FUNC4(json_wtr, "fd_type", "uretprobe");
		FUNC4(json_wtr, "filename", buf);
		FUNC2(json_wtr, "offset", probe_offset);
		break;
	default:
		break;
	}
	FUNC0(json_wtr);
}