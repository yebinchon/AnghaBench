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
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
#define  BPF_PROG_TYPE_SCHED_CLS 129 
#define  BPF_PROG_TYPE_XDP 128 
 int FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 char** helper_name ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char** prog_type_name ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*) ; 

__attribute__((used)) static void
FUNC8(enum bpf_prog_type prog_type, bool supported_type,
			   const char *define_prefix, __u32 ifindex)
{
	const char *ptype_name = prog_type_name[prog_type];
	char feat_name[128];
	unsigned int id;
	bool res;

	if (ifindex)
		/* Only test helpers for offload-able program types */
		switch (prog_type) {
		case BPF_PROG_TYPE_SCHED_CLS:
		case BPF_PROG_TYPE_XDP:
			break;
		default:
			return;
		}

	if (json_output) {
		FUNC7(feat_name, "%s_available_helpers", ptype_name);
		FUNC3(json_wtr, feat_name);
		FUNC4(json_wtr);
	} else if (!define_prefix) {
		FUNC6("eBPF helpers supported for program type %s:",
		       ptype_name);
	}

	for (id = 1; id < FUNC0(helper_name); id++) {
		if (!supported_type)
			res = false;
		else
			res = FUNC1(id, prog_type, ifindex);

		if (json_output) {
			if (res)
				FUNC5(json_wtr, helper_name[id]);
		} else if (define_prefix) {
			FUNC6("#define %sBPF__PROG_TYPE_%s__HELPER_%s %s\n",
			       define_prefix, ptype_name, helper_name[id],
			       res ? "1" : "0");
		} else {
			if (res)
				FUNC6("\n\t- %s", helper_name[id]);
		}
	}

	if (json_output)
		FUNC2(json_wtr);
	else if (!define_prefix)
		FUNC6("\n");
}