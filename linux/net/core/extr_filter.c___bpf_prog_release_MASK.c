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
struct bpf_prog {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ BPF_PROG_TYPE_SOCKET_FILTER ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog*) ; 

__attribute__((used)) static void FUNC3(struct bpf_prog *prog)
{
	if (prog->type == BPF_PROG_TYPE_SOCKET_FILTER) {
		FUNC1(prog);
	} else {
		FUNC2(prog);
		FUNC0(prog);
	}
}