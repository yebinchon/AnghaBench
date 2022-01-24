#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct sock {int /*<<< orphan*/  sk_drops; TYPE_1__ sk_backlog; int /*<<< orphan*/  sk_omem_alloc; int /*<<< orphan*/  sk_wmem_queued; int /*<<< orphan*/  sk_forward_alloc; int /*<<< orphan*/  sk_sndbuf; int /*<<< orphan*/  sk_rcvbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SK_MEMINFO_BACKLOG ; 
 size_t SK_MEMINFO_DROPS ; 
 size_t SK_MEMINFO_FWD_ALLOC ; 
 size_t SK_MEMINFO_OPTMEM ; 
 size_t SK_MEMINFO_RCVBUF ; 
 size_t SK_MEMINFO_RMEM_ALLOC ; 
 size_t SK_MEMINFO_SNDBUF ; 
 int SK_MEMINFO_VARS ; 
 size_t SK_MEMINFO_WMEM_ALLOC ; 
 size_t SK_MEMINFO_WMEM_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock const*) ; 

void FUNC5(const struct sock *sk, u32 *mem)
{
	FUNC2(mem, 0, sizeof(*mem) * SK_MEMINFO_VARS);

	mem[SK_MEMINFO_RMEM_ALLOC] = FUNC3(sk);
	mem[SK_MEMINFO_RCVBUF] = FUNC0(sk->sk_rcvbuf);
	mem[SK_MEMINFO_WMEM_ALLOC] = FUNC4(sk);
	mem[SK_MEMINFO_SNDBUF] = FUNC0(sk->sk_sndbuf);
	mem[SK_MEMINFO_FWD_ALLOC] = sk->sk_forward_alloc;
	mem[SK_MEMINFO_WMEM_QUEUED] = FUNC0(sk->sk_wmem_queued);
	mem[SK_MEMINFO_OPTMEM] = FUNC1(&sk->sk_omem_alloc);
	mem[SK_MEMINFO_BACKLOG] = FUNC0(sk->sk_backlog.len);
	mem[SK_MEMINFO_DROPS] = FUNC1(&sk->sk_drops);
}