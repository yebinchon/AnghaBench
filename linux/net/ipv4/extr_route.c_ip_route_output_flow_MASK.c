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
struct rtable {int /*<<< orphan*/  dst; } ;
struct net {int dummy; } ;
struct flowi4 {scalar_t__ flowi4_proto; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtable*) ; 
 struct rtable* FUNC1 (struct net*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC2 (struct flowi4*) ; 
 scalar_t__ FUNC3 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sock const*,int /*<<< orphan*/ ) ; 

struct rtable *FUNC4(struct net *net, struct flowi4 *flp4,
				    const struct sock *sk)
{
	struct rtable *rt = FUNC1(net, flp4);

	if (FUNC0(rt))
		return rt;

	if (flp4->flowi4_proto)
		rt = (struct rtable *)FUNC3(net, &rt->dst,
							FUNC2(flp4),
							sk, 0);

	return rt;
}