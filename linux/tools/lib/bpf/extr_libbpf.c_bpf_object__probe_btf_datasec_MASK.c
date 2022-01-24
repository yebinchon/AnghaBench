#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  types ;
struct TYPE_2__ {int btf_datasec; } ;
struct bpf_object {TYPE_1__ caps; } ;
typedef  int /*<<< orphan*/  strs ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BTF_INT_SIGNED ; 
 int /*<<< orphan*/  BTF_KIND_DATASEC ; 
 int /*<<< orphan*/  BTF_KIND_VAR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BTF_VAR_STATIC ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,int,char const*,int) ; 

__attribute__((used)) static int FUNC6(struct bpf_object *obj)
{
	const char strs[] = "\0x\0.data";
	/* static int a; */
	__u32 types[] = {
		/* int */
		FUNC2(0, BTF_INT_SIGNED, 0, 32, 4),  /* [1] */
		/* VAR x */                                     /* [2] */
		FUNC1(1, FUNC0(BTF_KIND_VAR, 0, 0), 1),
		BTF_VAR_STATIC,
		/* DATASEC val */                               /* [3] */
		FUNC1(3, FUNC0(BTF_KIND_DATASEC, 0, 1), 4),
		FUNC3(2, 0, 4),
	};
	int btf_fd;

	btf_fd = FUNC5((char *)types, sizeof(types),
				      strs, sizeof(strs));
	if (btf_fd >= 0) {
		obj->caps.btf_datasec = 1;
		FUNC4(btf_fd);
		return 1;
	}

	return 0;
}