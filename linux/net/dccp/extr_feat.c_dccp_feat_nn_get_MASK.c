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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct sock {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_l_seq_win; int /*<<< orphan*/  dccps_l_ack_ratio; int /*<<< orphan*/  dccps_featneg; } ;
struct TYPE_2__ {int /*<<< orphan*/  nn; } ;
struct dccp_feat_entry {TYPE_1__ val; } ;

/* Variables and functions */
#define  DCCPF_ACK_RATIO 129 
#define  DCCPF_SEQUENCE_WINDOW 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FEAT_NN ; 
 struct dccp_feat_entry* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct dccp_sock* FUNC3 (struct sock*) ; 

u64 FUNC4(struct sock *sk, u8 feat)
{
	if (FUNC2(feat) == FEAT_NN) {
		struct dccp_sock *dp = FUNC3(sk);
		struct dccp_feat_entry *entry;

		entry = FUNC1(&dp->dccps_featneg, feat, 1);
		if (entry != NULL)
			return entry->val.nn;

		switch (feat) {
		case DCCPF_ACK_RATIO:
			return dp->dccps_l_ack_ratio;
		case DCCPF_SEQUENCE_WINDOW:
			return dp->dccps_l_seq_win;
		}
	}
	FUNC0("attempt to look up unsupported feature %u", feat);
	return 0;
}