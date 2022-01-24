#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_4__ {size_t protocol; size_t operation; int /*<<< orphan*/  port; int /*<<< orphan*/  address; int /*<<< orphan*/  is_ipv6; } ;
struct TYPE_5__ {TYPE_1__ inet_network; } ;
struct tomoyo_request_info {TYPE_2__ param; int /*<<< orphan*/  param_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  port; int /*<<< orphan*/  address; int /*<<< orphan*/  is_ipv6; } ;
struct tomoyo_addr_info {size_t protocol; size_t operation; TYPE_3__ inet; } ;

/* Variables and functions */
 scalar_t__ TOMOYO_CONFIG_DISABLED ; 
 int TOMOYO_RETRY_REQUEST ; 
 int /*<<< orphan*/  TOMOYO_TYPE_INET_ACL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tomoyo_request_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct tomoyo_request_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tomoyo_check_inet_acl ; 
 scalar_t__** tomoyo_inet2mac ; 
 scalar_t__ FUNC3 (struct tomoyo_request_info*,int /*<<< orphan*/ *,scalar_t__ const) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int const) ; 

__attribute__((used)) static int FUNC6(const struct tomoyo_addr_info *address)
{
	const int idx = FUNC4();
	struct tomoyo_request_info r;
	int error = 0;
	const u8 type = tomoyo_inet2mac[address->protocol][address->operation];

	if (type && FUNC3(&r, NULL, type)
	    != TOMOYO_CONFIG_DISABLED) {
		r.param_type = TOMOYO_TYPE_INET_ACL;
		r.param.inet_network.protocol = address->protocol;
		r.param.inet_network.operation = address->operation;
		r.param.inet_network.is_ipv6 = address->inet.is_ipv6;
		r.param.inet_network.address = address->inet.address;
		r.param.inet_network.port = FUNC0(address->inet.port);
		do {
			FUNC2(&r, tomoyo_check_inet_acl);
			error = FUNC1(&r);
		} while (error == TOMOYO_RETRY_REQUEST);
	}
	FUNC5(idx);
	return error;
}