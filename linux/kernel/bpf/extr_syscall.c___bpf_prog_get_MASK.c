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
typedef  int /*<<< orphan*/  u32 ;
struct fd {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC2 (struct fd) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog*,int*,int) ; 
 struct bpf_prog* FUNC4 (struct bpf_prog*) ; 
 struct fd FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fd) ; 

__attribute__((used)) static struct bpf_prog *FUNC7(u32 ufd, enum bpf_prog_type *attach_type,
				       bool attach_drv)
{
	struct fd f = FUNC5(ufd);
	struct bpf_prog *prog;

	prog = FUNC2(f);
	if (FUNC1(prog))
		return prog;
	if (!FUNC3(prog, attach_type, attach_drv)) {
		prog = FUNC0(-EINVAL);
		goto out;
	}

	prog = FUNC4(prog);
out:
	FUNC6(f);
	return prog;
}