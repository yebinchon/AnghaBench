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
struct bpf_prog_load_attr {char* file; } ;
struct bpf_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_object*) ; 
 int FUNC2 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct bpf_object*,int,int,int) ; 
 int FUNC5 (struct bpf_object*,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 

void FUNC8(void)
{
	struct bpf_prog_load_attr attr = {
		.file = "./sockopt_multi.o",
	};
	int cg_parent = -1, cg_child = -1;
	struct bpf_object *obj = NULL;
	int sock_fd = -1;
	int err = -1;
	int ignored;

	cg_parent = FUNC7("/parent");
	if (FUNC0(cg_parent < 0))
		goto out;

	cg_child = FUNC7("/parent/child");
	if (FUNC0(cg_child < 0))
		goto out;

	err = FUNC2(&attr, &obj, &ignored);
	if (FUNC0(err))
		goto out;

	sock_fd = FUNC6(AF_INET, SOCK_STREAM, 0);
	if (FUNC0(sock_fd < 0))
		goto out;

	FUNC0(FUNC4(obj, cg_parent, cg_child, sock_fd));
	FUNC0(FUNC5(obj, cg_parent, cg_child, sock_fd));

out:
	FUNC3(sock_fd);
	FUNC1(obj);
	FUNC3(cg_child);
	FUNC3(cg_parent);
}