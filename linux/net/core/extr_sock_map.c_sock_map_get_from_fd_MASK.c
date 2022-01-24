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
union bpf_attr {int /*<<< orphan*/  attach_type; int /*<<< orphan*/  target_fd; } ;
typedef  int /*<<< orphan*/  u32 ;
struct fd {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bpf_map*) ; 
 int FUNC1 (struct bpf_map*) ; 
 struct bpf_map* FUNC2 (struct fd) ; 
 struct fd FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fd) ; 
 int FUNC5 (struct bpf_map*,struct bpf_prog*,int /*<<< orphan*/ ) ; 

int FUNC6(const union bpf_attr *attr, struct bpf_prog *prog)
{
	u32 ufd = attr->target_fd;
	struct bpf_map *map;
	struct fd f;
	int ret;

	f = FUNC3(ufd);
	map = FUNC2(f);
	if (FUNC0(map))
		return FUNC1(map);
	ret = FUNC5(map, prog, attr->attach_type);
	FUNC4(f);
	return ret;
}