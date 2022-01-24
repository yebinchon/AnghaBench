#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct prefix_info {int prefix_len; int /*<<< orphan*/  prefix; scalar_t__ autoconf; scalar_t__ onlink; int /*<<< orphan*/  prefered; int /*<<< orphan*/  valid; } ;
struct net_device {int name; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * s6_addr; } ;
struct TYPE_3__ {scalar_t__ autoconf; } ;
struct inet6_dev {int /*<<< orphan*/  lock; TYPE_2__ token; TYPE_1__ cnf; } ;
struct in6_addr {struct in6_addr* s6_addr; } ;
struct fib6_info {int dummy; } ;
typedef  int /*<<< orphan*/  clock_t ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  IFA_F_STABLE_PRIVACY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MULTICAST ; 
 int RTF_ADDRCONF ; 
 int /*<<< orphan*/  RTF_DEFAULT ; 
 int RTF_EXPIRES ; 
 int RTF_PREFIX_RT ; 
 int /*<<< orphan*/  RTM_NEWPREFIX ; 
 unsigned long USER_HZ ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 struct fib6_info* FUNC1 (int /*<<< orphan*/ *,int,struct net_device*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct net*,struct net_device*,struct prefix_info*,struct inet6_dev*,struct in6_addr*,int,int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (scalar_t__,unsigned long) ; 
 struct net* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct fib6_info*,scalar_t__) ; 
 struct inet6_dev* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct inet6_dev*,struct prefix_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct net*,struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct in6_addr*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct in6_addr*,int /*<<< orphan*/ ,struct inet6_dev*) ; 
 scalar_t__ FUNC17 (struct in6_addr*,struct inet6_dev*) ; 
 scalar_t__ FUNC18 (struct inet6_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC19 (unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (struct in6_addr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (struct net*,struct net_device*,struct prefix_info*,struct inet6_dev*,struct in6_addr*,int,int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*,char*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

void FUNC28(struct net_device *dev, u8 *opt, int len, bool sllao)
{
	struct prefix_info *pinfo;
	__u32 valid_lft;
	__u32 prefered_lft;
	int addr_type, err;
	u32 addr_flags = 0;
	struct inet6_dev *in6_dev;
	struct net *net = FUNC5(dev);

	pinfo = (struct prefix_info *) opt;

	if (len < sizeof(struct prefix_info)) {
		FUNC24(dev, "addrconf: prefix option too short\n");
		return;
	}

	/*
	 *	Validation checks ([ADDRCONF], page 19)
	 */

	addr_type = FUNC14(&pinfo->prefix);

	if (addr_type & (IPV6_ADDR_MULTICAST|IPV6_ADDR_LINKLOCAL))
		return;

	valid_lft = FUNC25(pinfo->valid);
	prefered_lft = FUNC25(pinfo->prefered);

	if (prefered_lft > valid_lft) {
		FUNC23("addrconf: prefix option has invalid lifetime\n");
		return;
	}

	in6_dev = FUNC9(dev);

	if (!in6_dev) {
		FUNC22("addrconf: device %s not configured\n",
				    dev->name);
		return;
	}

	/*
	 *	Two things going on here:
	 *	1) Add routes for on-link prefixes
	 *	2) Configure prefixes with the auto flag set
	 */

	if (pinfo->onlink) {
		struct fib6_info *rt;
		unsigned long rt_expires;

		/* Avoid arithmetic overflow. Really, we could
		 * save rt_expires in seconds, likely valid_lft,
		 * but it would require division in fib gc, that it
		 * not good.
		 */
		if (HZ > USER_HZ)
			rt_expires = FUNC4(valid_lft, HZ);
		else
			rt_expires = FUNC4(valid_lft, USER_HZ);

		if (FUNC0(rt_expires))
			rt_expires *= HZ;

		rt = FUNC1(&pinfo->prefix,
					       pinfo->prefix_len,
					       dev,
					       RTF_ADDRCONF | RTF_PREFIX_RT,
					       RTF_DEFAULT, true);

		if (rt) {
			/* Autoconf prefix route */
			if (valid_lft == 0) {
				FUNC12(net, rt);
				rt = NULL;
			} else if (FUNC0(rt_expires)) {
				/* not infinity */
				FUNC8(rt, jiffies + rt_expires);
			} else {
				FUNC6(rt);
			}
		} else if (valid_lft) {
			clock_t expires = 0;
			int flags = RTF_ADDRCONF | RTF_PREFIX_RT;
			if (FUNC0(rt_expires)) {
				/* not infinity */
				flags |= RTF_EXPIRES;
				expires = FUNC19(rt_expires);
			}
			FUNC3(&pinfo->prefix, pinfo->prefix_len,
					      0, dev, expires, flags,
					      GFP_ATOMIC);
		}
		FUNC7(rt);
	}

	/* Try to figure out our local address for this prefix */

	if (pinfo->autoconf && in6_dev->cnf.autoconf) {
		struct in6_addr addr;
		bool tokenized = false, dev_addr_generated = false;

		if (pinfo->prefix_len == 64) {
			FUNC20(&addr, &pinfo->prefix, 8);

			if (!FUNC13(&in6_dev->token)) {
				FUNC26(&in6_dev->lock);
				FUNC20(addr.s6_addr + 8,
				       in6_dev->token.s6_addr + 8, 8);
				FUNC27(&in6_dev->lock);
				tokenized = true;
			} else if (FUNC18(in6_dev) &&
				   !FUNC16(&addr, 0,
								 in6_dev)) {
				addr_flags |= IFA_F_STABLE_PRIVACY;
				goto ok;
			} else if (FUNC15(addr.s6_addr + 8, dev) &&
				   FUNC17(addr.s6_addr + 8, in6_dev)) {
				goto put;
			} else {
				dev_addr_generated = true;
			}
			goto ok;
		}
		FUNC22("IPv6 addrconf: prefix with wrong length %d\n",
				    pinfo->prefix_len);
		goto put;

ok:
		err = FUNC2(net, dev, pinfo, in6_dev,
						   &addr, addr_type,
						   addr_flags, sllao,
						   tokenized, valid_lft,
						   prefered_lft);
		if (err)
			goto put;

		/* Ignore error case here because previous prefix add addr was
		 * successful which will be notified.
		 */
		FUNC21(net, dev, pinfo, in6_dev, &addr,
					      addr_type, addr_flags, sllao,
					      tokenized, valid_lft,
					      prefered_lft,
					      dev_addr_generated);
	}
	FUNC11(RTM_NEWPREFIX, in6_dev, pinfo);
put:
	FUNC10(in6_dev);
}