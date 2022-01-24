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
struct seg6_local_lwt {struct lwtunnel_state* srh; int /*<<< orphan*/  headroom; int /*<<< orphan*/  action; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {int /*<<< orphan*/  headroom; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 unsigned int AF_INET6 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LWTUNNEL_ENCAP_SEG6_LOCAL ; 
 int /*<<< orphan*/  LWTUNNEL_STATE_INPUT_REDIRECT ; 
 size_t SEG6_LOCAL_ACTION ; 
 int /*<<< orphan*/  SEG6_LOCAL_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct lwtunnel_state*) ; 
 struct lwtunnel_state* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC4 (struct nlattr**,struct seg6_local_lwt*) ; 
 struct seg6_local_lwt* FUNC5 (struct lwtunnel_state*) ; 
 int /*<<< orphan*/  seg6_local_policy ; 

__attribute__((used)) static int FUNC6(struct nlattr *nla, unsigned int family,
				  const void *cfg, struct lwtunnel_state **ts,
				  struct netlink_ext_ack *extack)
{
	struct nlattr *tb[SEG6_LOCAL_MAX + 1];
	struct lwtunnel_state *newts;
	struct seg6_local_lwt *slwt;
	int err;

	if (family != AF_INET6)
		return -EINVAL;

	err = FUNC3(tb, SEG6_LOCAL_MAX, nla,
					  seg6_local_policy, extack);

	if (err < 0)
		return err;

	if (!tb[SEG6_LOCAL_ACTION])
		return -EINVAL;

	newts = FUNC1(sizeof(*slwt));
	if (!newts)
		return -ENOMEM;

	slwt = FUNC5(newts);
	slwt->action = FUNC2(tb[SEG6_LOCAL_ACTION]);

	err = FUNC4(tb, slwt);
	if (err < 0)
		goto out_free;

	newts->type = LWTUNNEL_ENCAP_SEG6_LOCAL;
	newts->flags = LWTUNNEL_STATE_INPUT_REDIRECT;
	newts->headroom = slwt->headroom;

	*ts = newts;

	return 0;

out_free:
	FUNC0(slwt->srh);
	FUNC0(newts);
	return err;
}