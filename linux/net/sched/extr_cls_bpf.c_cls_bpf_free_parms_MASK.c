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
struct cls_bpf_prog {int /*<<< orphan*/  bpf_ops; int /*<<< orphan*/  bpf_name; int /*<<< orphan*/  filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cls_bpf_prog*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cls_bpf_prog *prog)
{
	if (FUNC2(prog))
		FUNC1(prog->filter);
	else
		FUNC0(prog->filter);

	FUNC3(prog->bpf_name);
	FUNC3(prog->bpf_ops);
}