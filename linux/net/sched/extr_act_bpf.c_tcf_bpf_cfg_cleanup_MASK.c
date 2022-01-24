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
struct tcf_bpf_cfg {int /*<<< orphan*/  bpf_name; int /*<<< orphan*/  bpf_ops; scalar_t__ is_ebpf; struct bpf_prog* filter; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct tcf_bpf_cfg *cfg)
{
	struct bpf_prog *filter = cfg->filter;

	if (filter) {
		if (cfg->is_ebpf)
			FUNC1(filter);
		else
			FUNC0(filter);
	}

	FUNC2(cfg->bpf_ops);
	FUNC2(cfg->bpf_name);
}