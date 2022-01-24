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
struct tipc_nl_compat_msg {int /*<<< orphan*/  dst_sk; } ;
struct tipc_nl_compat_cmd_doit {int (* transcode ) (struct tipc_nl_compat_cmd_doit*,struct sk_buff*,struct tipc_nl_compat_msg*) ;int (* doit ) (struct sk_buff*,struct genl_info*) ;} ;
struct sk_buff {int /*<<< orphan*/  sk; int /*<<< orphan*/  len; scalar_t__ data; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_2__ {scalar_t__ maxattr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr**) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct nlattr** FUNC3 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct genl_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct nlattr**,scalar_t__,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct tipc_nl_compat_cmd_doit*,struct sk_buff*,struct tipc_nl_compat_msg*) ; 
 int FUNC9 (struct sk_buff*,struct genl_info*) ; 
 TYPE_1__ tipc_genl_family ; 

__attribute__((used)) static int FUNC10(struct tipc_nl_compat_cmd_doit *cmd,
				 struct tipc_nl_compat_msg *msg)
{
	int err;
	struct sk_buff *doit_buf;
	struct sk_buff *trans_buf;
	struct nlattr **attrbuf;
	struct genl_info info;

	trans_buf = FUNC0(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!trans_buf)
		return -ENOMEM;

	attrbuf = FUNC3(tipc_genl_family.maxattr + 1,
				sizeof(struct nlattr *),
				GFP_KERNEL);
	if (!attrbuf) {
		err = -ENOMEM;
		goto trans_out;
	}

	doit_buf = FUNC0(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!doit_buf) {
		err = -ENOMEM;
		goto attrbuf_out;
	}

	FUNC4(&info, 0, sizeof(info));
	info.attrs = attrbuf;

	FUNC6();
	err = (*cmd->transcode)(cmd, trans_buf, msg);
	if (err)
		goto doit_out;

	err = FUNC5(attrbuf, tipc_genl_family.maxattr,
				   (const struct nlattr *)trans_buf->data,
				   trans_buf->len, NULL, NULL);
	if (err)
		goto doit_out;

	doit_buf->sk = msg->dst_sk;

	err = (*cmd->doit)(doit_buf, &info);
doit_out:
	FUNC7();

	FUNC2(doit_buf);
attrbuf_out:
	FUNC1(attrbuf);
trans_out:
	FUNC2(trans_buf);

	return err;
}