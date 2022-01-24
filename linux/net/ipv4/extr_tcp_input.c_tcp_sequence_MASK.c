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
struct tcp_sock {scalar_t__ rcv_nxt; int /*<<< orphan*/  rcv_wup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tcp_sock const*) ; 

__attribute__((used)) static inline bool FUNC3(const struct tcp_sock *tp, u32 seq, u32 end_seq)
{
	return	!FUNC1(end_seq, tp->rcv_wup) &&
		!FUNC0(seq, tp->rcv_nxt + FUNC2(tp));
}