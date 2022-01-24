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
typedef  enum bpf_type { ____Placeholder_bpf_type } bpf_type ;

/* Variables and functions */
 int BPF_TYPE_MAP ; 
 int BPF_TYPE_PROG ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC3(u32 ufd, enum bpf_type *type)
{
	void *raw;

	*type = BPF_TYPE_MAP;
	raw = FUNC1(ufd);
	if (FUNC0(raw)) {
		*type = BPF_TYPE_PROG;
		raw = FUNC2(ufd);
	}

	return raw;
}