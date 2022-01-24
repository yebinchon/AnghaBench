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
struct in6_addr {int /*<<< orphan*/ * s6_addr32; } ;
struct sock {int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  sk_refcnt; int /*<<< orphan*/  sk_state; struct in6_addr sk_v6_rcv_saddr; struct in6_addr sk_v6_daddr; } ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

void FUNC8(struct seq_file *seq, struct sock *sp,
			       __u16 srcp, __u16 destp, int rqueue, int bucket)
{
	const struct in6_addr *dest, *src;

	dest  = &sp->sk_v6_daddr;
	src   = &sp->sk_v6_rcv_saddr;
	FUNC3(seq,
		   "%5d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X "
		   "%02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %u\n",
		   bucket,
		   src->s6_addr32[0], src->s6_addr32[1],
		   src->s6_addr32[2], src->s6_addr32[3], srcp,
		   dest->s6_addr32[0], dest->s6_addr32[1],
		   dest->s6_addr32[2], dest->s6_addr32[3], destp,
		   sp->sk_state,
		   FUNC5(sp),
		   rqueue,
		   0, 0L, 0,
		   FUNC1(FUNC4(seq), FUNC7(sp)),
		   0,
		   FUNC6(sp),
		   FUNC2(&sp->sk_refcnt), sp,
		   FUNC0(&sp->sk_drops));
}