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
typedef  int /*<<< orphan*/  sub_str ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  addr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  DNS 131 
#define  GATEWAY 130 
 int HV_INVALIDARG ; 
 int INET6_ADDRSTRLEN ; 
#define  IPADDR 129 
 int MAX_IP_ADDR_SIZE ; 
#define  NETMASK 128 
 scalar_t__ FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,int*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC6(FILE *f, char *ip_string, int type)
{
	int error = 0;
	char addr[INET6_ADDRSTRLEN];
	int i = 0;
	int j = 0;
	char str[256];
	char sub_str[13];
	int offset = 0;

	FUNC3(addr, 0, sizeof(addr));

	while (FUNC4(ip_string, &offset, addr,
					(MAX_IP_ADDR_SIZE * 2))) {

		sub_str[0] = 0;
		if (FUNC1(addr)) {
			switch (type) {
			case IPADDR:
				FUNC5(str, sizeof(str), "%s", "IPADDR");
				break;
			case NETMASK:
				FUNC5(str, sizeof(str), "%s", "NETMASK");
				break;
			case GATEWAY:
				FUNC5(str, sizeof(str), "%s", "GATEWAY");
				break;
			case DNS:
				FUNC5(str, sizeof(str), "%s", "DNS");
				break;
			}

			if (type == DNS) {
				FUNC5(sub_str, sizeof(sub_str), "%d", ++i);
			} else if (type == GATEWAY && i == 0) {
				++i;
			} else {
				FUNC5(sub_str, sizeof(sub_str), "%d", i++);
			}


		} else if (FUNC0(addr, type)) {
			switch (type) {
			case IPADDR:
				FUNC5(str, sizeof(str), "%s", "IPV6ADDR");
				break;
			case NETMASK:
				FUNC5(str, sizeof(str), "%s", "IPV6NETMASK");
				break;
			case GATEWAY:
				FUNC5(str, sizeof(str), "%s",
					"IPV6_DEFAULTGW");
				break;
			case DNS:
				FUNC5(str, sizeof(str), "%s",  "DNS");
				break;
			}

			if (type == DNS) {
				FUNC5(sub_str, sizeof(sub_str), "%d", ++i);
			} else if (j == 0) {
				++j;
			} else {
				FUNC5(sub_str, sizeof(sub_str), "_%d", j++);
			}
		} else {
			return  HV_INVALIDARG;
		}

		error = FUNC2(f, str, sub_str, addr);
		if (error)
			return error;
		FUNC3(addr, 0, sizeof(addr));
	}

	return 0;
}