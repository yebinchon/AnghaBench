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
struct nlattr {int dummy; } ;
struct TYPE_2__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_1__ src; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_IP_MAX ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int /*<<< orphan*/  cta_ip_nla_policy ; 
 int FUNC0 (struct nlattr**,struct nf_conntrack_tuple*) ; 
 int FUNC1 (struct nlattr**,struct nf_conntrack_tuple*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nlattr *attr,
				    struct nf_conntrack_tuple *tuple)
{
	struct nlattr *tb[CTA_IP_MAX+1];
	int ret = 0;

	ret = FUNC2(tb, CTA_IP_MAX, attr, NULL, NULL);
	if (ret < 0)
		return ret;

	ret = FUNC3(attr, CTA_IP_MAX,
					     cta_ip_nla_policy, NULL);
	if (ret)
		return ret;

	switch (tuple->src.l3num) {
	case NFPROTO_IPV4:
		ret = FUNC0(tb, tuple);
		break;
	case NFPROTO_IPV6:
		ret = FUNC1(tb, tuple);
		break;
	}

	return ret;
}