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
typedef  int /*<<< orphan*/  types ;
typedef  int /*<<< orphan*/  strs ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BTF_INT_SIGNED ; 
 int /*<<< orphan*/  BTF_KIND_STRUCT ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (char*,int,char const*,int) ; 

__attribute__((used)) static int FUNC5(void)
{
	const char strs[] = "\0bpf_spin_lock\0val\0cnt\0l";
	/* struct bpf_spin_lock {
	 *   int val;
	 * };
	 * struct val {
	 *   int cnt;
	 *   struct bpf_spin_lock l;
	 * };
	 */
	__u32 types[] = {
		/* int */
		FUNC3(0, BTF_INT_SIGNED, 0, 32, 4),  /* [1] */
		/* struct bpf_spin_lock */                      /* [2] */
		FUNC2(1, FUNC0(BTF_KIND_STRUCT, 0, 1), 4),
		FUNC1(15, 1, 0), /* int val; */
		/* struct val */                                /* [3] */
		FUNC2(15, FUNC0(BTF_KIND_STRUCT, 0, 2), 8),
		FUNC1(19, 1, 0), /* int cnt; */
		FUNC1(23, 2, 32),/* struct bpf_spin_lock l; */
	};

	return FUNC4((char *)types, sizeof(types),
				     strs, sizeof(strs));
}