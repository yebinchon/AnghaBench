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
struct nlattr {int dummy; } ;
struct nf_conn_synproxy {void* tsoff; void* its; void* isn; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 size_t CTA_SYNPROXY ; 
 size_t CTA_SYNPROXY_ISN ; 
 size_t CTA_SYNPROXY_ITS ; 
 int /*<<< orphan*/  CTA_SYNPROXY_MAX ; 
 size_t CTA_SYNPROXY_TSOFF ; 
 int EINVAL ; 
 struct nf_conn_synproxy* FUNC0 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  synproxy_policy ; 

__attribute__((used)) static int FUNC4(struct nf_conn *ct,
				     const struct nlattr * const cda[])
{
	struct nf_conn_synproxy *synproxy = FUNC0(ct);
	struct nlattr *tb[CTA_SYNPROXY_MAX + 1];
	int err;

	if (!synproxy)
		return 0;

	err = FUNC2(tb, CTA_SYNPROXY_MAX,
					  cda[CTA_SYNPROXY], synproxy_policy,
					  NULL);
	if (err < 0)
		return err;

	if (!tb[CTA_SYNPROXY_ISN] ||
	    !tb[CTA_SYNPROXY_ITS] ||
	    !tb[CTA_SYNPROXY_TSOFF])
		return -EINVAL;

	synproxy->isn = FUNC3(FUNC1(tb[CTA_SYNPROXY_ISN]));
	synproxy->its = FUNC3(FUNC1(tb[CTA_SYNPROXY_ITS]));
	synproxy->tsoff = FUNC3(FUNC1(tb[CTA_SYNPROXY_TSOFF]));

	return 0;
}