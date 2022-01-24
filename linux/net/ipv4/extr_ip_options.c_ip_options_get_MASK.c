#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  __data; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ip_options_rcu* FUNC0 (int) ; 
 int FUNC1 (struct net*,struct ip_options_rcu**,struct ip_options_rcu*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC3(struct net *net, struct ip_options_rcu **optp,
		   unsigned char *data, int optlen)
{
	struct ip_options_rcu *opt = FUNC0(optlen);

	if (!opt)
		return -ENOMEM;
	if (optlen)
		FUNC2(opt->opt.__data, data, optlen);
	return FUNC1(net, optp, opt, optlen);
}