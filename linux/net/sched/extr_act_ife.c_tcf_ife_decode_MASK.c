#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct tcf_result {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_ife_info {int tcf_action; TYPE_1__ common; int /*<<< orphan*/  tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {TYPE_2__* dev; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  hard_header_len; } ;

/* Variables and functions */
 int TC_ACT_SHOT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct tcf_ife_info*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct tcf_ife_info* FUNC15 (struct tc_action const*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, const struct tc_action *a,
			  struct tcf_result *res)
{
	struct tcf_ife_info *ife = FUNC15(a);
	int action = ife->tcf_action;
	u8 *ifehdr_end;
	u8 *tlv_data;
	u16 metalen;

	FUNC1(FUNC14(ife->common.cpu_bstats), skb);
	FUNC13(&ife->tcf_tm);

	if (FUNC10(skb))
		FUNC11(skb, skb->dev->hard_header_len);

	tlv_data = FUNC4(skb, &metalen);
	if (FUNC16(!tlv_data)) {
		FUNC8(FUNC14(ife->common.cpu_qstats));
		return TC_ACT_SHOT;
	}

	ifehdr_end = tlv_data + metalen;
	for (; tlv_data < ifehdr_end; tlv_data = FUNC6(tlv_data)) {
		u8 *curr_data;
		u16 mtype;
		u16 dlen;

		curr_data = FUNC5(tlv_data, ifehdr_end, &mtype,
						&dlen, NULL);
		if (!curr_data) {
			FUNC8(FUNC14(ife->common.cpu_qstats));
			return TC_ACT_SHOT;
		}

		if (FUNC3(skb, ife, mtype, dlen, curr_data)) {
			/* abuse overlimits to count when we receive metadata
			 * but dont have an ops for it
			 */
			FUNC7("Unknown metaid %d dlen %d\n",
					    mtype, dlen);
			FUNC9(FUNC14(ife->common.cpu_qstats));
		}
	}

	if (FUNC0(tlv_data != ifehdr_end)) {
		FUNC8(FUNC14(ife->common.cpu_qstats));
		return TC_ACT_SHOT;
	}

	skb->protocol = FUNC2(skb, skb->dev);
	FUNC12(skb);

	return action;
}