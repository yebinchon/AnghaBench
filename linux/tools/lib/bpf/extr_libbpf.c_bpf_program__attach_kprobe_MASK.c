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
struct bpf_program {int dummy; } ;
struct bpf_link {int dummy; } ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 struct bpf_link* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bpf_link*) ; 
 int FUNC2 (struct bpf_link*) ; 
 int STRERR_BUFSIZE ; 
 struct bpf_link* FUNC3 (struct bpf_program*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_program*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int FUNC7 (int,int,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 

struct bpf_link *FUNC9(struct bpf_program *prog,
					    bool retprobe,
					    const char *func_name)
{
	char errmsg[STRERR_BUFSIZE];
	struct bpf_link *link;
	int pfd, err;

	pfd = FUNC7(false /* uprobe */, retprobe, func_name,
				    0 /* offset */, -1 /* pid */);
	if (pfd < 0) {
		FUNC8("program '%s': failed to create %s '%s' perf event: %s\n",
			   FUNC4(prog, false),
			   retprobe ? "kretprobe" : "kprobe", func_name,
			   FUNC6(pfd, errmsg, sizeof(errmsg)));
		return FUNC0(pfd);
	}
	link = FUNC3(prog, pfd);
	if (FUNC1(link)) {
		FUNC5(pfd);
		err = FUNC2(link);
		FUNC8("program '%s': failed to attach to %s '%s': %s\n",
			   FUNC4(prog, false),
			   retprobe ? "kretprobe" : "kprobe", func_name,
			   FUNC6(err, errmsg, sizeof(errmsg)));
		return link;
	}
	return link;
}