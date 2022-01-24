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
struct sock {int dummy; } ;
struct ipv6_txoptions {int opt_flen; int opt_nflen; } ;
struct ipv6_pinfo {int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 struct ipv6_pinfo* FUNC0 (struct sock*) ; 
 struct ipv6_txoptions* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct sock *sk)
{
	struct ipv6_pinfo *np = FUNC0(sk);
	struct ipv6_txoptions *opt;
	int len = 0;

	FUNC2();
	opt = FUNC1(np->opt);
	if (opt)
		len = opt->opt_flen + opt->opt_nflen;

	FUNC3();
	return len;
}