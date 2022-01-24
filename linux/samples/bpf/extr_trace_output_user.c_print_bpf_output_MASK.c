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
typedef  int __u64 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 long long MAX_CNT ; 
 long long cnt ; 
 int /*<<< orphan*/  FUNC0 (char*,long long,...) ; 
 long long start_time ; 
 long long FUNC1 () ; 

__attribute__((used)) static void FUNC2(void *ctx, int cpu, void *data, __u32 size)
{
	struct {
		__u64 pid;
		__u64 cookie;
	} *e = data;

	if (e->cookie != 0x12345678) {
		FUNC0("BUG pid %llx cookie %llx sized %d\n",
		       e->pid, e->cookie, size);
		return;
	}

	cnt++;

	if (cnt == MAX_CNT) {
		FUNC0("recv %lld events per sec\n",
		       MAX_CNT * 1000000000ll / (FUNC1() - start_time));
		return;
	}
}