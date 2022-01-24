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
struct ifreq {int /*<<< orphan*/  ifr_flags; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC4(const char *ifname)
{
	struct ifreq ifr = {};
	int sk, ret;

	FUNC3(ifr.ifr_name, ifname, sizeof(ifr.ifr_name));

	sk = FUNC2(PF_INET, SOCK_DGRAM, 0);
	if (sk < 0)
		return -1;

	ret = FUNC1(sk, SIOCGIFFLAGS, &ifr);
	if (ret) {
		FUNC0(sk);
		return -1;
	}

	ifr.ifr_flags |= IFF_UP;
	ret = FUNC1(sk, SIOCSIFFLAGS, &ifr);
	if (ret) {
		FUNC0(sk);
		return -1;
	}

	FUNC0(sk);
	return 0;
}