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
struct path {int /*<<< orphan*/  dentry; } ;
struct bpf_prog {int dummy; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 struct bpf_prog* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 struct bpf_prog* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 

struct bpf_prog *FUNC7(const char *name, enum bpf_prog_type type)
{
	struct bpf_prog *prog;
	struct path path;
	int ret = FUNC4(name, LOOKUP_FOLLOW, &path);
	if (ret)
		return FUNC0(ret);
	prog = FUNC2(FUNC3(path.dentry), type);
	if (!FUNC1(prog))
		FUNC6(&path);
	FUNC5(&path);
	return prog;
}