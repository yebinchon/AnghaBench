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
struct ifreq {int ifr_ifindex; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifdata ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCGIFINDEX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC6(const char *ifname)
{
	struct ifreq ifdata;
	int sd, rc;

	if (!ifname || *ifname == '\0')
		return -1;

	FUNC3(&ifdata, 0, sizeof(ifdata));

	FUNC5(ifdata.ifr_name, ifname);

	sd = FUNC4(PF_INET, SOCK_DGRAM, IPPROTO_IP);
	if (sd < 0) {
		FUNC2("socket failed");
		return -1;
	}

	rc = FUNC1(sd, SIOCGIFINDEX, (char *)&ifdata);
	FUNC0(sd);
	if (rc != 0) {
		FUNC2("ioctl(SIOCGIFINDEX) failed");
		return -1;
	}

	return ifdata.ifr_ifindex;
}