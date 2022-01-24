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
struct xt_mtchk_param {struct ipt_entry* entryinfo; struct xt_l2tp_info* matchinfo; } ;
struct xt_l2tp_info {int version; } ;
struct ipt_ip {scalar_t__ proto; } ;
struct ipt_entry {struct ipt_ip ip; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IPPROTO_L2TP ; 
 scalar_t__ IPPROTO_UDP ; 
 int FUNC0 (struct xt_mtchk_param const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(const struct xt_mtchk_param *par)
{
	const struct xt_l2tp_info *info = par->matchinfo;
	const struct ipt_entry *e = par->entryinfo;
	const struct ipt_ip *ip = &e->ip;
	int ret;

	ret = FUNC0(par);
	if (ret != 0)
		return ret;

	if ((ip->proto != IPPROTO_UDP) &&
	    (ip->proto != IPPROTO_L2TP)) {
		FUNC1("missing protocol rule (udp|l2tpip)\n");
		return -EINVAL;
	}

	if ((ip->proto == IPPROTO_L2TP) &&
	    (info->version == 2)) {
		FUNC1("v2 doesn't support IP mode\n");
		return -EINVAL;
	}

	return 0;
}