#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/ * args; TYPE_1__* nlh; TYPE_5__* skb; int /*<<< orphan*/  extack; } ;
struct devlink_region {int dummy; } ;
struct devlink {int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  sk; } ;
struct TYPE_8__ {int /*<<< orphan*/  portid; } ;
struct TYPE_7__ {int /*<<< orphan*/  policy; scalar_t__ hdrsize; } ;
struct TYPE_6__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 scalar_t__ DEVLINK_ATTR_MAX ; 
 int /*<<< orphan*/  DEVLINK_ATTR_REGION_CHUNKS ; 
 size_t DEVLINK_ATTR_REGION_CHUNK_ADDR ; 
 size_t DEVLINK_ATTR_REGION_CHUNK_LEN ; 
 size_t DEVLINK_ATTR_REGION_NAME ; 
 size_t DEVLINK_ATTR_REGION_SNAPSHOT_ID ; 
 int /*<<< orphan*/  DEVLINK_CMD_REGION_READ ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 scalar_t__ GENL_HDRLEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct devlink*) ; 
 TYPE_4__ FUNC1 (TYPE_5__*) ; 
 int NLM_F_ACK ; 
 int NLM_F_MULTI ; 
 int FUNC2 (struct devlink*) ; 
 struct devlink* FUNC3 (int /*<<< orphan*/ ,struct nlattr**) ; 
 int /*<<< orphan*/  devlink_mutex ; 
 TYPE_2__ devlink_nl_family ; 
 int FUNC4 (struct sk_buff*,struct devlink*) ; 
 int FUNC5 (struct sk_buff*,struct devlink*,struct devlink_region*,struct nlattr**,scalar_t__,scalar_t__,int,scalar_t__*) ; 
 struct devlink_region* FUNC6 (struct devlink*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,void*) ; 
 void* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr**) ; 
 struct nlattr** FUNC11 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (struct nlattr*) ; 
 scalar_t__ FUNC15 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct sk_buff*,size_t,char const*) ; 
 int FUNC19 (TYPE_1__*,scalar_t__,struct nlattr**,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct sk_buff *skb,
					     struct netlink_callback *cb)
{
	u64 ret_offset, start_offset, end_offset = 0;
	struct devlink_region *region;
	struct nlattr *chunks_attr;
	const char *region_name;
	struct devlink *devlink;
	struct nlattr **attrs;
	bool dump = true;
	void *hdr;
	int err;

	start_offset = *((u64 *)&cb->args[0]);

	attrs = FUNC11(DEVLINK_ATTR_MAX + 1, sizeof(*attrs), GFP_KERNEL);
	if (!attrs)
		return -ENOMEM;

	err = FUNC19(cb->nlh,
				     GENL_HDRLEN + devlink_nl_family.hdrsize,
				     attrs, DEVLINK_ATTR_MAX,
				     devlink_nl_family.policy, cb->extack);
	if (err)
		goto out_free;

	FUNC12(&devlink_mutex);
	devlink = FUNC3(FUNC20(cb->skb->sk), attrs);
	if (FUNC0(devlink)) {
		err = FUNC2(devlink);
		goto out_dev;
	}

	FUNC12(&devlink->lock);

	if (!attrs[DEVLINK_ATTR_REGION_NAME] ||
	    !attrs[DEVLINK_ATTR_REGION_SNAPSHOT_ID]) {
		err = -EINVAL;
		goto out_unlock;
	}

	region_name = FUNC14(attrs[DEVLINK_ATTR_REGION_NAME]);
	region = FUNC6(devlink, region_name);
	if (!region) {
		err = -EINVAL;
		goto out_unlock;
	}

	hdr = FUNC9(skb, FUNC1(cb->skb).portid, cb->nlh->nlmsg_seq,
			  &devlink_nl_family, NLM_F_ACK | NLM_F_MULTI,
			  DEVLINK_CMD_REGION_READ);
	if (!hdr) {
		err = -EMSGSIZE;
		goto out_unlock;
	}

	err = FUNC4(skb, devlink);
	if (err)
		goto nla_put_failure;

	err = FUNC18(skb, DEVLINK_ATTR_REGION_NAME, region_name);
	if (err)
		goto nla_put_failure;

	chunks_attr = FUNC17(skb, DEVLINK_ATTR_REGION_CHUNKS);
	if (!chunks_attr) {
		err = -EMSGSIZE;
		goto nla_put_failure;
	}

	if (attrs[DEVLINK_ATTR_REGION_CHUNK_ADDR] &&
	    attrs[DEVLINK_ATTR_REGION_CHUNK_LEN]) {
		if (!start_offset)
			start_offset =
				FUNC15(attrs[DEVLINK_ATTR_REGION_CHUNK_ADDR]);

		end_offset = FUNC15(attrs[DEVLINK_ATTR_REGION_CHUNK_ADDR]);
		end_offset += FUNC15(attrs[DEVLINK_ATTR_REGION_CHUNK_LEN]);
		dump = false;
	}

	err = FUNC5(skb, devlink,
						   region, attrs,
						   start_offset,
						   end_offset, dump,
						   &ret_offset);

	if (err && err != -EMSGSIZE)
		goto nla_put_failure;

	/* Check if there was any progress done to prevent infinite loop */
	if (ret_offset == start_offset) {
		err = -EINVAL;
		goto nla_put_failure;
	}

	*((u64 *)&cb->args[0]) = ret_offset;

	FUNC16(skb, chunks_attr);
	FUNC8(skb, hdr);
	FUNC13(&devlink->lock);
	FUNC13(&devlink_mutex);
	FUNC10(attrs);

	return skb->len;

nla_put_failure:
	FUNC7(skb, hdr);
out_unlock:
	FUNC13(&devlink->lock);
out_dev:
	FUNC13(&devlink_mutex);
out_free:
	FUNC10(attrs);
	return err;
}