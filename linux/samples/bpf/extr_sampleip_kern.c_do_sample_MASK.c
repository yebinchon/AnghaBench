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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct bpf_perf_event_data {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_map ; 

int FUNC3(struct bpf_perf_event_data *ctx)
{
	u64 ip;
	u32 *value, init_val = 1;

	ip = FUNC0(&ctx->regs);
	value = FUNC1(&ip_map, &ip);
	if (value)
		*value += 1;
	else
		/* E2BIG not tested for this example only */
		FUNC2(&ip_map, &ip, &init_val, BPF_NOEXIST);

	return 0;
}