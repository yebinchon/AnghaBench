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
struct bpf_attach_info {int flow_dissector_id; } ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  BPF_FLOW_DISSECTOR ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct bpf_attach_info *attach_info)
{
	__u32 attach_flags;
	__u32 prog_ids[1];
	__u32 prog_cnt;
	int err;
	int fd;

	fd = FUNC3("/proc/self/ns/net", O_RDONLY);
	if (fd < 0) {
		FUNC4("can't open /proc/self/ns/net: %s",
		      FUNC5(errno));
		return -1;
	}
	prog_cnt = FUNC0(prog_ids);
	err = FUNC1(fd, BPF_FLOW_DISSECTOR, 0,
			     &attach_flags, prog_ids, &prog_cnt);
	FUNC2(fd);
	if (err) {
		if (errno == EINVAL) {
			/* Older kernel's don't support querying
			 * flow dissector programs.
			 */
			errno = 0;
			return 0;
		}
		FUNC4("can't query prog: %s", FUNC5(errno));
		return -1;
	}

	if (prog_cnt == 1)
		attach_info->flow_dissector_id = prog_ids[0];

	return 0;
}