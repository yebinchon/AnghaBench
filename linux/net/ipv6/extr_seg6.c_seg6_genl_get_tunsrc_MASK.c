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
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;
struct TYPE_2__ {int /*<<< orphan*/  tun_src; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  SEG6_ATTR_DST ; 
 int /*<<< orphan*/  SEG6_CMD_GET_TUNSRC ; 
 struct net* FUNC0 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct genl_info*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct in6_addr* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  seg6_genl_family ; 
 TYPE_1__* FUNC10 (struct net*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC0(info);
	struct in6_addr *tun_src;
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC2(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC3(msg, info->snd_portid, info->snd_seq,
			  &seg6_genl_family, 0, SEG6_CMD_GET_TUNSRC);
	if (!hdr)
		goto free_msg;

	FUNC8();
	tun_src = FUNC7(FUNC10(net)->tun_src);

	if (FUNC5(msg, SEG6_ATTR_DST, sizeof(struct in6_addr), tun_src))
		goto nla_put_failure;

	FUNC9();

	FUNC1(msg, hdr);
	return FUNC4(msg, info);

nla_put_failure:
	FUNC9();
free_msg:
	FUNC6(msg);
	return -ENOMEM;
}