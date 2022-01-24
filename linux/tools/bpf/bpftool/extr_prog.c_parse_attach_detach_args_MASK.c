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

/* Variables and functions */
 int BPF_FLOW_DISSECTOR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int __MAX_BPF_ATTACH_TYPE ; 
 int FUNC2 (int*,char***) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int*,char***) ; 

__attribute__((used)) static int FUNC6(int argc, char **argv, int *progfd,
				    enum bpf_attach_type *attach_type,
				    int *mapfd)
{
	if (!FUNC1(3))
		return -EINVAL;

	*progfd = FUNC5(&argc, &argv);
	if (*progfd < 0)
		return *progfd;

	*attach_type = FUNC4(*argv);
	if (*attach_type == __MAX_BPF_ATTACH_TYPE) {
		FUNC3("invalid attach/detach type");
		return -EINVAL;
	}

	if (*attach_type == BPF_FLOW_DISSECTOR) {
		*mapfd = -1;
		return 0;
	}

	FUNC0();
	if (!FUNC1(2))
		return -EINVAL;

	*mapfd = FUNC2(&argc, &argv);
	if (*mapfd < 0)
		return *mapfd;

	return 0;
}