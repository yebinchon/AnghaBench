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
struct xt_tgchk_param {int /*<<< orphan*/  net; struct ipt_ip* entryinfo; } ;
struct ipt_ip {scalar_t__ proto; int invflags; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int IPT_INV_PROTO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(const struct xt_tgchk_param *par)
{
	const struct ipt_ip *i = par->entryinfo;
	int err;

	err = FUNC0(par->net);
	if (err)
		return err;

	if ((i->proto == IPPROTO_TCP || i->proto == IPPROTO_UDP)
	    && !(i->invflags & IPT_INV_PROTO))
		return 0;

	FUNC1("Can be used only with -p tcp or -p udp\n");
	return -EINVAL;
}