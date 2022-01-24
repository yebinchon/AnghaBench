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
struct tipc_nl_compat_msg {int /*<<< orphan*/  rep; } ;
struct tipc_link_info {int /*<<< orphan*/  str; int /*<<< orphan*/  up; int /*<<< orphan*/  dest; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  link_info ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TIPC_MAX_LINK_NAME ; 
 size_t TIPC_NLA_LINK ; 
 size_t TIPC_NLA_LINK_DEST ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_MAX ; 
 size_t TIPC_NLA_LINK_NAME ; 
 size_t TIPC_NLA_LINK_UP ; 
 int /*<<< orphan*/  TIPC_TLV_LINK_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tipc_link_info*,int) ; 

__attribute__((used)) static int FUNC5(struct tipc_nl_compat_msg *msg,
				    struct nlattr **attrs)
{
	struct nlattr *link[TIPC_NLA_LINK_MAX + 1];
	struct tipc_link_info link_info;
	int err;

	if (!attrs[TIPC_NLA_LINK])
		return -EINVAL;

	err = FUNC2(link, TIPC_NLA_LINK_MAX,
					  attrs[TIPC_NLA_LINK], NULL, NULL);
	if (err)
		return err;

	link_info.dest = FUNC1(link[TIPC_NLA_LINK_DEST]);
	link_info.up = FUNC0(FUNC1(link[TIPC_NLA_LINK_UP]));
	FUNC3(link_info.str, link[TIPC_NLA_LINK_NAME],
		    TIPC_MAX_LINK_NAME);

	return FUNC4(msg->rep, TIPC_TLV_LINK_INFO,
			    &link_info, sizeof(link_info));
}