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
typedef  int /*<<< orphan*/  plain_desc ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
typedef  int /*<<< orphan*/  define_name ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
#define  BPF_PROG_TYPE_SCHED_CLS 129 
#define  BPF_PROG_TYPE_XDP 128 
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int,char const*) ; 
 char** prog_type_name ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,...) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(enum bpf_prog_type prog_type, bool *supported_types,
		const char *define_prefix, __u32 ifindex)
{
	char feat_name[128], plain_desc[128], define_name[128];
	const char *plain_comment = "eBPF program_type ";
	size_t maxlen;
	bool res;

	if (ifindex)
		/* Only test offload-able program types */
		switch (prog_type) {
		case BPF_PROG_TYPE_SCHED_CLS:
		case BPF_PROG_TYPE_XDP:
			break;
		default:
			return;
		}

	res = FUNC0(prog_type, ifindex);

	supported_types[prog_type] |= res;

	maxlen = sizeof(plain_desc) - FUNC4(plain_comment) - 1;
	if (FUNC4(prog_type_name[prog_type]) > maxlen) {
		FUNC1("program type name too long");
		return;
	}

	FUNC3(feat_name, "have_%s_prog_type", prog_type_name[prog_type]);
	FUNC3(define_name, "%s_prog_type", prog_type_name[prog_type]);
	FUNC5(define_name, sizeof(define_name));
	FUNC3(plain_desc, "%s%s", plain_comment, prog_type_name[prog_type]);
	FUNC2(feat_name, plain_desc, define_name, res,
			   define_prefix);
}