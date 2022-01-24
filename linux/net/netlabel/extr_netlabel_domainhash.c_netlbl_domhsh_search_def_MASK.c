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
typedef  scalar_t__ u16 ;
struct netlbl_dom_map {scalar_t__ valid; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  netlbl_domhsh_def_ipv4 ; 
 int /*<<< orphan*/  netlbl_domhsh_def_ipv6 ; 
 struct netlbl_dom_map* FUNC0 (int /*<<< orphan*/ ) ; 
 struct netlbl_dom_map* FUNC1 (char const*,scalar_t__) ; 

__attribute__((used)) static struct netlbl_dom_map *FUNC2(const char *domain,
						       u16 family)
{
	struct netlbl_dom_map *entry;

	entry = FUNC1(domain, family);
	if (entry != NULL)
		return entry;
	if (family == AF_INET || family == AF_UNSPEC) {
		entry = FUNC0(netlbl_domhsh_def_ipv4);
		if (entry != NULL && entry->valid)
			return entry;
	}
	if (family == AF_INET6 || family == AF_UNSPEC) {
		entry = FUNC0(netlbl_domhsh_def_ipv6);
		if (entry != NULL && entry->valid)
			return entry;
	}

	return NULL;
}