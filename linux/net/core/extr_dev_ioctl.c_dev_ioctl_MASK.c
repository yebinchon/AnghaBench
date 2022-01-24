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
struct net {int /*<<< orphan*/  user_ns; } ;
struct ifreq {scalar_t__* ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENOTTY ; 
 int EPERM ; 
 int IFNAMSIZ ; 
#define  SIOCADDMULTI 162 
#define  SIOCBONDCHANGEACTIVE 161 
#define  SIOCBONDENSLAVE 160 
#define  SIOCBONDINFOQUERY 159 
#define  SIOCBONDRELEASE 158 
#define  SIOCBONDSETHWADDR 157 
#define  SIOCBONDSLAVEINFOQUERY 156 
#define  SIOCBRADDIF 155 
#define  SIOCBRDELIF 154 
#define  SIOCDELMULTI 153 
 unsigned int SIOCDEVPRIVATE ; 
#define  SIOCETHTOOL 152 
 unsigned int SIOCGHWTSTAMP ; 
#define  SIOCGIFFLAGS 151 
#define  SIOCGIFHWADDR 150 
#define  SIOCGIFINDEX 149 
#define  SIOCGIFMAP 148 
#define  SIOCGIFMEM 147 
#define  SIOCGIFMETRIC 146 
#define  SIOCGIFMTU 145 
 unsigned int SIOCGIFNAME ; 
#define  SIOCGIFSLAVE 144 
#define  SIOCGIFTXQLEN 143 
#define  SIOCGMIIPHY 142 
#define  SIOCGMIIREG 141 
#define  SIOCSHWTSTAMP 140 
#define  SIOCSIFFLAGS 139 
#define  SIOCSIFHWADDR 138 
#define  SIOCSIFHWBROADCAST 137 
#define  SIOCSIFLINK 136 
#define  SIOCSIFMAP 135 
#define  SIOCSIFMEM 134 
#define  SIOCSIFMETRIC 133 
#define  SIOCSIFMTU 132 
#define  SIOCSIFNAME 131 
#define  SIOCSIFSLAVE 130 
#define  SIOCSIFTXQLEN 129 
#define  SIOCSMIIREG 128 
 unsigned int SIOCWANDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net*,struct ifreq*) ; 
 int FUNC2 (struct net*,struct ifreq*) ; 
 int FUNC3 (struct net*,struct ifreq*,unsigned int) ; 
 int FUNC4 (struct net*,struct ifreq*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* FUNC11 (scalar_t__*,char) ; 

int FUNC12(struct net *net, unsigned int cmd, struct ifreq *ifr, bool *need_copyout)
{
	int ret;
	char *colon;

	if (need_copyout)
		*need_copyout = true;
	if (cmd == SIOCGIFNAME)
		return FUNC2(net, ifr);

	ifr->ifr_name[IFNAMSIZ-1] = 0;

	colon = FUNC11(ifr->ifr_name, ':');
	if (colon)
		*colon = 0;

	/*
	 *	See which interface the caller is talking about.
	 */

	switch (cmd) {
	/*
	 *	These ioctl calls:
	 *	- can be done by all.
	 *	- atomic and do not require locking.
	 *	- return a value
	 */
	case SIOCGIFFLAGS:
	case SIOCGIFMETRIC:
	case SIOCGIFMTU:
	case SIOCGIFHWADDR:
	case SIOCGIFSLAVE:
	case SIOCGIFMAP:
	case SIOCGIFINDEX:
	case SIOCGIFTXQLEN:
		FUNC5(net, ifr->ifr_name);
		FUNC7();
		ret = FUNC4(net, ifr, cmd);
		FUNC8();
		if (colon)
			*colon = ':';
		return ret;

	case SIOCETHTOOL:
		FUNC5(net, ifr->ifr_name);
		FUNC9();
		ret = FUNC1(net, ifr);
		FUNC10();
		if (colon)
			*colon = ':';
		return ret;

	/*
	 *	These ioctl calls:
	 *	- require superuser power.
	 *	- require strict serialization.
	 *	- return a value
	 */
	case SIOCGMIIPHY:
	case SIOCGMIIREG:
	case SIOCSIFNAME:
		FUNC5(net, ifr->ifr_name);
		if (!FUNC6(net->user_ns, CAP_NET_ADMIN))
			return -EPERM;
		FUNC9();
		ret = FUNC3(net, ifr, cmd);
		FUNC10();
		if (colon)
			*colon = ':';
		return ret;

	/*
	 *	These ioctl calls:
	 *	- require superuser power.
	 *	- require strict serialization.
	 *	- do not return a value
	 */
	case SIOCSIFMAP:
	case SIOCSIFTXQLEN:
		if (!FUNC0(CAP_NET_ADMIN))
			return -EPERM;
		/* fall through */
	/*
	 *	These ioctl calls:
	 *	- require local superuser power.
	 *	- require strict serialization.
	 *	- do not return a value
	 */
	case SIOCSIFFLAGS:
	case SIOCSIFMETRIC:
	case SIOCSIFMTU:
	case SIOCSIFHWADDR:
	case SIOCSIFSLAVE:
	case SIOCADDMULTI:
	case SIOCDELMULTI:
	case SIOCSIFHWBROADCAST:
	case SIOCSMIIREG:
	case SIOCBONDENSLAVE:
	case SIOCBONDRELEASE:
	case SIOCBONDSETHWADDR:
	case SIOCBONDCHANGEACTIVE:
	case SIOCBRADDIF:
	case SIOCBRDELIF:
	case SIOCSHWTSTAMP:
		if (!FUNC6(net->user_ns, CAP_NET_ADMIN))
			return -EPERM;
		/* fall through */
	case SIOCBONDSLAVEINFOQUERY:
	case SIOCBONDINFOQUERY:
		FUNC5(net, ifr->ifr_name);
		FUNC9();
		ret = FUNC3(net, ifr, cmd);
		FUNC10();
		if (need_copyout)
			*need_copyout = false;
		return ret;

	case SIOCGIFMEM:
		/* Get the per device memory space. We can add this but
		 * currently do not support it */
	case SIOCSIFMEM:
		/* Set the per device memory buffer space.
		 * Not applicable in our case */
	case SIOCSIFLINK:
		return -ENOTTY;

	/*
	 *	Unknown or private ioctl.
	 */
	default:
		if (cmd == SIOCWANDEV ||
		    cmd == SIOCGHWTSTAMP ||
		    (cmd >= SIOCDEVPRIVATE &&
		     cmd <= SIOCDEVPRIVATE + 15)) {
			FUNC5(net, ifr->ifr_name);
			FUNC9();
			ret = FUNC3(net, ifr, cmd);
			FUNC10();
			return ret;
		}
		return -ENOTTY;
	}
}