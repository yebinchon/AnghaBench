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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  time_fmt2 ;
typedef  int /*<<< orphan*/  time_fmt1 ;
struct key_t {void* userstack; void* kernstack; int /*<<< orphan*/  comm; } ;
struct bpf_perf_event_value {int /*<<< orphan*/  running; int /*<<< orphan*/  enabled; } ;
struct bpf_perf_event_data {int sample_period; int addr; int /*<<< orphan*/  regs; } ;
typedef  int /*<<< orphan*/  fmt ;
typedef  int /*<<< orphan*/  addr_fmt ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int /*<<< orphan*/  KERN_STACKID_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USER_STACKID_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (struct bpf_perf_event_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int /*<<< orphan*/ *,struct key_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct key_t*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bpf_perf_event_data*,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,...) ; 
 int /*<<< orphan*/  counts ; 
 int /*<<< orphan*/  stackmap ; 

int FUNC8(struct bpf_perf_event_data *ctx)
{
	char time_fmt1[] = "Time Enabled: %llu, Time Running: %llu";
	char time_fmt2[] = "Get Time Failed, ErrCode: %d";
	char addr_fmt[] = "Address recorded on event: %llx";
	char fmt[] = "CPU-%d period %lld ip %llx";
	u32 cpu = FUNC2();
	struct bpf_perf_event_value value_buf;
	struct key_t key;
	u64 *val, one = 1;
	int ret;

	if (ctx->sample_period < 10000)
		/* ignore warmup */
		return 0;
	FUNC1(&key.comm, sizeof(key.comm));
	key.kernstack = FUNC3(ctx, &stackmap, KERN_STACKID_FLAGS);
	key.userstack = FUNC3(ctx, &stackmap, USER_STACKID_FLAGS);
	if ((int)key.kernstack < 0 && (int)key.userstack < 0) {
		FUNC7(fmt, sizeof(fmt), cpu, ctx->sample_period,
				 FUNC0(&ctx->regs));
		return 0;
	}

	ret = FUNC6(ctx, (void *)&value_buf, sizeof(struct bpf_perf_event_value));
	if (!ret)
	  FUNC7(time_fmt1, sizeof(time_fmt1), value_buf.enabled, value_buf.running);
	else
	  FUNC7(time_fmt2, sizeof(time_fmt2), ret);

	if (ctx->addr != 0)
	  FUNC7(addr_fmt, sizeof(addr_fmt), ctx->addr);

	val = FUNC4(&counts, &key);
	if (val)
		(*val)++;
	else
		FUNC5(&counts, &key, &one, BPF_NOEXIST);
	return 0;
}