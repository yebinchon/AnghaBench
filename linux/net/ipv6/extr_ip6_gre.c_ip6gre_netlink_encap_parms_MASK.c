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
struct ip_tunnel_encap {void* dport; void* sport; void* flags; void* type; } ;

/* Variables and functions */
 size_t IFLA_GRE_ENCAP_DPORT ; 
 size_t IFLA_GRE_ENCAP_FLAGS ; 
 size_t IFLA_GRE_ENCAP_SPORT ; 
 size_t IFLA_GRE_ENCAP_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct ip_tunnel_encap*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (struct nlattr*) ; 
 void* FUNC2 (struct nlattr*) ; 

__attribute__((used)) static bool FUNC3(struct nlattr *data[],
				       struct ip_tunnel_encap *ipencap)
{
	bool ret = false;

	FUNC0(ipencap, 0, sizeof(*ipencap));

	if (!data)
		return ret;

	if (data[IFLA_GRE_ENCAP_TYPE]) {
		ret = true;
		ipencap->type = FUNC2(data[IFLA_GRE_ENCAP_TYPE]);
	}

	if (data[IFLA_GRE_ENCAP_FLAGS]) {
		ret = true;
		ipencap->flags = FUNC2(data[IFLA_GRE_ENCAP_FLAGS]);
	}

	if (data[IFLA_GRE_ENCAP_SPORT]) {
		ret = true;
		ipencap->sport = FUNC1(data[IFLA_GRE_ENCAP_SPORT]);
	}

	if (data[IFLA_GRE_ENCAP_DPORT]) {
		ret = true;
		ipencap->dport = FUNC1(data[IFLA_GRE_ENCAP_DPORT]);
	}

	return ret;
}