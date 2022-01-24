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
union bpf_attr {int /*<<< orphan*/  prog_id; } ;
typedef  int /*<<< orphan*/  u32 ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_GET_FD_BY_ID ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int EPERM ; 
 struct bpf_prog* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bpf_prog*) ; 
 int FUNC3 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC4 (struct bpf_prog*) ; 
 int FUNC5 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct bpf_prog* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prog_idr ; 
 int /*<<< orphan*/  prog_idr_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(const union bpf_attr *attr)
{
	struct bpf_prog *prog;
	u32 id = attr->prog_id;
	int fd;

	if (FUNC0(BPF_PROG_GET_FD_BY_ID))
		return -EINVAL;

	if (!FUNC7(CAP_SYS_ADMIN))
		return -EPERM;

	FUNC9(&prog_idr_lock);
	prog = FUNC8(&prog_idr, id);
	if (prog)
		prog = FUNC4(prog);
	else
		prog = FUNC1(-ENOENT);
	FUNC10(&prog_idr_lock);

	if (FUNC2(prog))
		return FUNC3(prog);

	fd = FUNC5(prog);
	if (fd < 0)
		FUNC6(prog);

	return fd;
}