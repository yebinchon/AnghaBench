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
union nf_inet_addr {int /*<<< orphan*/  ip6; int /*<<< orphan*/  ip; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 scalar_t__ NFPROTO_IPV4 ; 
 scalar_t__ FUNC0 (struct nf_conn const*) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const struct nf_conn *ct, char *buffer,
			    const union nf_inet_addr *addr, bool delim)
{
	if (FUNC0(ct) == NFPROTO_IPV4)
		return FUNC1(buffer, "%pI4", &addr->ip);
	else {
		if (delim)
			return FUNC1(buffer, "[%pI6c]", &addr->ip6);
		else
			return FUNC1(buffer, "%pI6c", &addr->ip6);
	}
}