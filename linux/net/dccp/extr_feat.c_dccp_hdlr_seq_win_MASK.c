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
typedef  void* u64 ;
struct sock {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_gss; void* dccps_l_seq_win; int /*<<< orphan*/  dccps_gsr; void* dccps_r_seq_win; } ;

/* Variables and functions */
 struct dccp_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, u64 seq_win, bool rx)
{
	struct dccp_sock *dp = FUNC0(sk);

	if (rx) {
		dp->dccps_r_seq_win = seq_win;
		/* propagate changes to update SWL/SWH */
		FUNC1(sk, dp->dccps_gsr);
	} else {
		dp->dccps_l_seq_win = seq_win;
		/* propagate changes to update AWL */
		FUNC2(sk, dp->dccps_gss);
	}
	return 0;
}