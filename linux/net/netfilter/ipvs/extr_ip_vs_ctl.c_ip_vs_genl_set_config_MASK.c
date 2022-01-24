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
struct netns_ipvs {int dummy; } ;
struct ip_vs_timeout_user {void* udp_timeout; void* tcp_fin_timeout; void* tcp_timeout; } ;

/* Variables and functions */
 size_t IPVS_CMD_ATTR_TIMEOUT_TCP ; 
 size_t IPVS_CMD_ATTR_TIMEOUT_TCP_FIN ; 
 size_t IPVS_CMD_ATTR_TIMEOUT_UDP ; 
 int /*<<< orphan*/  FUNC0 (struct netns_ipvs*,struct ip_vs_timeout_user*) ; 
 int FUNC1 (struct netns_ipvs*,struct ip_vs_timeout_user*) ; 
 void* FUNC2 (struct nlattr*) ; 

__attribute__((used)) static int FUNC3(struct netns_ipvs *ipvs, struct nlattr **attrs)
{
	struct ip_vs_timeout_user t;

	FUNC0(ipvs, &t);

	if (attrs[IPVS_CMD_ATTR_TIMEOUT_TCP])
		t.tcp_timeout = FUNC2(attrs[IPVS_CMD_ATTR_TIMEOUT_TCP]);

	if (attrs[IPVS_CMD_ATTR_TIMEOUT_TCP_FIN])
		t.tcp_fin_timeout =
			FUNC2(attrs[IPVS_CMD_ATTR_TIMEOUT_TCP_FIN]);

	if (attrs[IPVS_CMD_ATTR_TIMEOUT_UDP])
		t.udp_timeout = FUNC2(attrs[IPVS_CMD_ATTR_TIMEOUT_UDP]);

	return FUNC1(ipvs, &t);
}