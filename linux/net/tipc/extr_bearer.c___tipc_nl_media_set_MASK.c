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
struct tipc_media {scalar_t__ type_id; void* mtu; void* window; void* priority; void* tolerance; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  extack; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TIPC_MEDIA_TYPE_UDP ; 
 int /*<<< orphan*/  TIPC_NLA_BEARER_MAX ; 
 size_t TIPC_NLA_MEDIA ; 
 int /*<<< orphan*/  TIPC_NLA_MEDIA_MAX ; 
 size_t TIPC_NLA_MEDIA_NAME ; 
 size_t TIPC_NLA_MEDIA_PROP ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_MAX ; 
 size_t TIPC_NLA_PROP_MTU ; 
 size_t TIPC_NLA_PROP_PRIO ; 
 size_t TIPC_NLA_PROP_TOL ; 
 size_t TIPC_NLA_PROP_WIN ; 
 char* FUNC0 (struct nlattr*) ; 
 void* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_media* FUNC3 (char*) ; 
 int /*<<< orphan*/  tipc_nl_media_policy ; 
 int FUNC4 (struct nlattr*,struct nlattr**) ; 
 scalar_t__ FUNC5 (void*) ; 

int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	int err;
	char *name;
	struct tipc_media *m;
	struct nlattr *attrs[TIPC_NLA_BEARER_MAX + 1];

	if (!info->attrs[TIPC_NLA_MEDIA])
		return -EINVAL;

	err = FUNC2(attrs, TIPC_NLA_MEDIA_MAX,
					  info->attrs[TIPC_NLA_MEDIA],
					  tipc_nl_media_policy, info->extack);

	if (!attrs[TIPC_NLA_MEDIA_NAME])
		return -EINVAL;
	name = FUNC0(attrs[TIPC_NLA_MEDIA_NAME]);

	m = FUNC3(name);
	if (!m)
		return -EINVAL;

	if (attrs[TIPC_NLA_MEDIA_PROP]) {
		struct nlattr *props[TIPC_NLA_PROP_MAX + 1];

		err = FUNC4(attrs[TIPC_NLA_MEDIA_PROP],
					      props);
		if (err)
			return err;

		if (props[TIPC_NLA_PROP_TOL])
			m->tolerance = FUNC1(props[TIPC_NLA_PROP_TOL]);
		if (props[TIPC_NLA_PROP_PRIO])
			m->priority = FUNC1(props[TIPC_NLA_PROP_PRIO]);
		if (props[TIPC_NLA_PROP_WIN])
			m->window = FUNC1(props[TIPC_NLA_PROP_WIN]);
		if (props[TIPC_NLA_PROP_MTU]) {
			if (m->type_id != TIPC_MEDIA_TYPE_UDP)
				return -EINVAL;
#ifdef CONFIG_TIPC_MEDIA_UDP
			if (tipc_udp_mtu_bad(nla_get_u32
					     (props[TIPC_NLA_PROP_MTU])))
				return -EINVAL;
			m->mtu = nla_get_u32(props[TIPC_NLA_PROP_MTU]);
#endif
		}
	}

	return 0;
}