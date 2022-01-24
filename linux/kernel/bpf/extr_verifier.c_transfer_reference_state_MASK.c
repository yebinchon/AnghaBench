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
struct bpf_func_state {int /*<<< orphan*/  acquired_refs; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_func_state*,struct bpf_func_state*) ; 
 int FUNC1 (struct bpf_func_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct bpf_func_state *dst,
				    struct bpf_func_state *src)
{
	int err = FUNC1(dst, src->acquired_refs, false);
	if (err)
		return err;
	err = FUNC0(dst, src);
	if (err)
		return err;
	return 0;
}