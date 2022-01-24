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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct ovs_header* userhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  dp_meter_genl_family ; 
 struct ovs_header* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct genl_info *info, u8 cmd,
			  struct ovs_header **ovs_reply_header)
{
	struct sk_buff *skb;
	struct ovs_header *ovs_header = info->userhdr;

	skb = FUNC3(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
	if (!skb)
		return FUNC0(-ENOMEM);

	*ovs_reply_header = FUNC1(skb, info->snd_portid,
					info->snd_seq,
					&dp_meter_genl_family, 0, cmd);
	if (!*ovs_reply_header) {
		FUNC2(skb);
		return FUNC0(-EMSGSIZE);
	}
	(*ovs_reply_header)->dp_ifindex = ovs_header->dp_ifindex;

	return skb;
}