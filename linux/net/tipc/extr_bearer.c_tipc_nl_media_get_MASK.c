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
struct tipc_nl_msg {int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; struct sk_buff* skb; } ;
struct tipc_media {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  extack; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  TIPC_NLA_BEARER_MAX ; 
 size_t TIPC_NLA_MEDIA ; 
 int /*<<< orphan*/  TIPC_NLA_MEDIA_MAX ; 
 size_t TIPC_NLA_MEDIA_NAME ; 
 int FUNC0 (struct tipc_nl_msg*,struct tipc_media*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,struct genl_info*) ; 
 char* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct tipc_media* FUNC8 (char*) ; 
 int /*<<< orphan*/  tipc_nl_media_policy ; 

int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	int err;
	char *name;
	struct tipc_nl_msg msg;
	struct tipc_media *media;
	struct sk_buff *rep;
	struct nlattr *attrs[TIPC_NLA_BEARER_MAX + 1];

	if (!info->attrs[TIPC_NLA_MEDIA])
		return -EINVAL;

	err = FUNC3(attrs, TIPC_NLA_MEDIA_MAX,
					  info->attrs[TIPC_NLA_MEDIA],
					  tipc_nl_media_policy, info->extack);
	if (err)
		return err;

	if (!attrs[TIPC_NLA_MEDIA_NAME])
		return -EINVAL;
	name = FUNC2(attrs[TIPC_NLA_MEDIA_NAME]);

	rep = FUNC5(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!rep)
		return -ENOMEM;

	msg.skb = rep;
	msg.portid = info->snd_portid;
	msg.seq = info->snd_seq;

	FUNC6();
	media = FUNC8(name);
	if (!media) {
		err = -EINVAL;
		goto err_out;
	}

	err = FUNC0(&msg, media, 0);
	if (err)
		goto err_out;
	FUNC7();

	return FUNC1(rep, info);
err_out:
	FUNC7();
	FUNC4(rep);

	return err;
}