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
struct pt_regs {int dummy; } ;
struct bpf_perf_event_value {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct bpf_perf_event_value* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bpf_perf_event_value*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bpf_perf_event_value*,int) ; 
 int /*<<< orphan*/  counters ; 
 int /*<<< orphan*/  values2 ; 

int FUNC4(struct pt_regs *ctx)
{
	u32 key = FUNC0();
	struct bpf_perf_event_value *val, buf;
	int error;

	error = FUNC3(&counters, key, &buf, sizeof(buf));
	if (error)
		return 0;

	val = FUNC1(&values2, &key);
	if (val)
		*val = buf;
	else
		FUNC2(&values2, &key, &buf, BPF_NOEXIST);

	return 0;
}