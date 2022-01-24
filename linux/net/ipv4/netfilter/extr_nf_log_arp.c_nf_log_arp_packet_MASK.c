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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {int dummy; } ;
struct nf_loginfo {int dummy; } ;
struct nf_log_buf {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nf_loginfo default_loginfo ; 
 int /*<<< orphan*/  FUNC0 (struct nf_log_buf*,struct nf_loginfo const*,struct sk_buff const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_log_buf*) ; 
 struct nf_log_buf* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nf_log_buf*,int /*<<< orphan*/ ,unsigned int,struct sk_buff const*,struct net_device const*,struct net_device const*,struct nf_loginfo const*,char const*) ; 
 int /*<<< orphan*/  sysctl_nf_log_all_netns ; 

__attribute__((used)) static void FUNC5(struct net *net, u_int8_t pf,
			      unsigned int hooknum, const struct sk_buff *skb,
			      const struct net_device *in,
			      const struct net_device *out,
			      const struct nf_loginfo *loginfo,
			      const char *prefix)
{
	struct nf_log_buf *m;

	/* FIXME: Disabled from containers until syslog ns is supported */
	if (!FUNC1(net, &init_net) && !sysctl_nf_log_all_netns)
		return;

	m = FUNC3();

	if (!loginfo)
		loginfo = &default_loginfo;

	FUNC4(m, pf, hooknum, skb, in, out, loginfo,
				  prefix);
	FUNC0(m, loginfo, skb, 0);

	FUNC2(m);
}