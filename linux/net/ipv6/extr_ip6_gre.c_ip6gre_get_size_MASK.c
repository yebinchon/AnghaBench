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
struct net_device {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 

__attribute__((used)) static size_t FUNC1(const struct net_device *dev)
{
	return
		/* IFLA_GRE_LINK */
		FUNC0(4) +
		/* IFLA_GRE_IFLAGS */
		FUNC0(2) +
		/* IFLA_GRE_OFLAGS */
		FUNC0(2) +
		/* IFLA_GRE_IKEY */
		FUNC0(4) +
		/* IFLA_GRE_OKEY */
		FUNC0(4) +
		/* IFLA_GRE_LOCAL */
		FUNC0(sizeof(struct in6_addr)) +
		/* IFLA_GRE_REMOTE */
		FUNC0(sizeof(struct in6_addr)) +
		/* IFLA_GRE_TTL */
		FUNC0(1) +
		/* IFLA_GRE_ENCAP_LIMIT */
		FUNC0(1) +
		/* IFLA_GRE_FLOWINFO */
		FUNC0(4) +
		/* IFLA_GRE_FLAGS */
		FUNC0(4) +
		/* IFLA_GRE_ENCAP_TYPE */
		FUNC0(2) +
		/* IFLA_GRE_ENCAP_FLAGS */
		FUNC0(2) +
		/* IFLA_GRE_ENCAP_SPORT */
		FUNC0(2) +
		/* IFLA_GRE_ENCAP_DPORT */
		FUNC0(2) +
		/* IFLA_GRE_COLLECT_METADATA */
		FUNC0(0) +
		/* IFLA_GRE_FWMARK */
		FUNC0(4) +
		/* IFLA_GRE_ERSPAN_INDEX */
		FUNC0(4) +
		0;
}