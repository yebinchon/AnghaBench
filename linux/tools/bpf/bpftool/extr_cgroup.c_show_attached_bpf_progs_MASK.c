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
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
#define  BPF_F_ALLOW_MULTI 129 
#define  BPF_F_ALLOW_OVERRIDE 128 
 int /*<<< orphan*/ * attach_type_strings ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  query_flags ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(int cgroup_fd, enum bpf_attach_type type,
				   int level)
{
	const char *attach_flags_str;
	__u32 prog_ids[1024] = {0};
	__u32 prog_cnt, iter;
	__u32 attach_flags;
	char buf[32];
	int ret;

	prog_cnt = FUNC0(prog_ids);
	ret = FUNC1(cgroup_fd, type, query_flags, &attach_flags,
			     prog_ids, &prog_cnt);
	if (ret)
		return ret;

	if (prog_cnt == 0)
		return 0;

	switch (attach_flags) {
	case BPF_F_ALLOW_MULTI:
		attach_flags_str = "multi";
		break;
	case BPF_F_ALLOW_OVERRIDE:
		attach_flags_str = "override";
		break;
	case 0:
		attach_flags_str = "";
		break;
	default:
		FUNC3(buf, sizeof(buf), "unknown(%x)", attach_flags);
		attach_flags_str = buf;
	}

	for (iter = 0; iter < prog_cnt; iter++)
		FUNC2(prog_ids[iter], attach_type_strings[type],
			      attach_flags_str, level);

	return 0;
}