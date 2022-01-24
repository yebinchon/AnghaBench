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
struct inode {struct bpf_prog* i_private; int /*<<< orphan*/ * i_op; } ;
struct bpf_prog {int dummy; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 struct bpf_prog* FUNC0 (int) ; 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  bpf_map_iops ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*,int*,int) ; 
 struct bpf_prog* FUNC2 (struct bpf_prog*) ; 
 int /*<<< orphan*/  bpf_prog_iops ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bpf_prog*) ; 

__attribute__((used)) static struct bpf_prog *FUNC5(struct inode *inode, enum bpf_prog_type type)
{
	struct bpf_prog *prog;
	int ret = FUNC3(inode, MAY_READ);
	if (ret)
		return FUNC0(ret);

	if (inode->i_op == &bpf_map_iops)
		return FUNC0(-EINVAL);
	if (inode->i_op != &bpf_prog_iops)
		return FUNC0(-EACCES);

	prog = inode->i_private;

	ret = FUNC4(prog);
	if (ret < 0)
		return FUNC0(ret);

	if (!FUNC1(prog, &type, false))
		return FUNC0(-EINVAL);

	return FUNC2(prog);
}