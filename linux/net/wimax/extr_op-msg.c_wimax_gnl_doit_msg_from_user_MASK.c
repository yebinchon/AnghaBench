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
struct wimax_dev {int (* op_msg_from_user ) (struct wimax_dev*,char*,void*,size_t,struct genl_info*) ;int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mutex; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; struct nlmsghdr* nlhdr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEDIUM ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t WIMAX_GNL_MSG_DATA ; 
 size_t WIMAX_GNL_MSG_IFIDX ; 
 size_t WIMAX_GNL_MSG_PIPE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,char*,struct sk_buff*,struct genl_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,char*,struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (struct nlattr*) ; 
 int FUNC12 (struct nlattr*) ; 
 size_t FUNC13 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (struct wimax_dev*,char*,void*,size_t,struct genl_info*) ; 
 struct wimax_dev* FUNC16 (struct genl_info*,int) ; 
 int FUNC17 (struct wimax_dev*) ; 
 struct device* FUNC18 (struct wimax_dev*) ; 

int FUNC19(struct sk_buff *skb, struct genl_info *info)
{
	int result, ifindex;
	struct wimax_dev *wimax_dev;
	struct device *dev;
	struct nlmsghdr *nlh = info->nlhdr;
	char *pipe_name;
	void *msg_buf;
	size_t msg_len;

	FUNC8();
	FUNC2(3, NULL, "(skb %p info %p)\n", skb, info);
	result = -ENODEV;
	if (info->attrs[WIMAX_GNL_MSG_IFIDX] == NULL) {
		FUNC14("WIMAX_GNL_MSG_FROM_USER: can't find IFIDX attribute\n");
		goto error_no_wimax_dev;
	}
	ifindex = FUNC12(info->attrs[WIMAX_GNL_MSG_IFIDX]);
	wimax_dev = FUNC16(info, ifindex);
	if (wimax_dev == NULL)
		goto error_no_wimax_dev;
	dev = FUNC18(wimax_dev);

	/* Unpack arguments */
	result = -EINVAL;
	if (info->attrs[WIMAX_GNL_MSG_DATA] == NULL) {
		FUNC4(dev, "WIMAX_GNL_MSG_FROM_USER: can't find MSG_DATA "
			"attribute\n");
		goto error_no_data;
	}
	msg_buf = FUNC11(info->attrs[WIMAX_GNL_MSG_DATA]);
	msg_len = FUNC13(info->attrs[WIMAX_GNL_MSG_DATA]);

	if (info->attrs[WIMAX_GNL_MSG_PIPE_NAME] == NULL)
		pipe_name = NULL;
	else {
		struct nlattr *attr = info->attrs[WIMAX_GNL_MSG_PIPE_NAME];
		size_t attr_len = FUNC13(attr);
		/* libnl-1.1 does not yet support NLA_NUL_STRING */
		result = -ENOMEM;
		pipe_name = FUNC7(FUNC11(attr), attr_len + 1, GFP_KERNEL);
		if (pipe_name == NULL)
			goto error_alloc;
		pipe_name[attr_len] = 0;
	}
	FUNC9(&wimax_dev->mutex);
	result = FUNC17(wimax_dev);
	if (result == -ENOMEDIUM)
		result = 0;
	if (result < 0)
		goto error_not_ready;
	result = -ENOSYS;
	if (wimax_dev->op_msg_from_user == NULL)
		goto error_noop;

	FUNC3(1, dev,
		 "CRX: nlmsghdr len %u type %u flags 0x%04x seq 0x%x pid %u\n",
		 nlh->nlmsg_len, nlh->nlmsg_type, nlh->nlmsg_flags,
		 nlh->nlmsg_seq, nlh->nlmsg_pid);
	FUNC3(1, dev, "CRX: wimax message %zu bytes\n", msg_len);
	FUNC0(2, dev, msg_buf, msg_len);

	result = wimax_dev->op_msg_from_user(wimax_dev, pipe_name,
					     msg_buf, msg_len, info);
error_noop:
error_not_ready:
	FUNC10(&wimax_dev->mutex);
error_alloc:
	FUNC6(pipe_name);
error_no_data:
	FUNC5(wimax_dev->net_dev);
error_no_wimax_dev:
	FUNC1(3, NULL, "(skb %p info %p) = %d\n", skb, info, result);
	return result;
}