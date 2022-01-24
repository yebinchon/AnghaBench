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
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int /*<<< orphan*/  master; int /*<<< orphan*/  mask; int /*<<< orphan*/  tuple; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nf_conntrack_tuple const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct nf_conntrack_zone const*) ; 

__attribute__((used)) static bool
FUNC4(const struct nf_conntrack_tuple *tuple,
		const struct nf_conntrack_expect *i,
		const struct nf_conntrack_zone *zone,
		const struct net *net)
{
	return FUNC2(tuple, &i->tuple, &i->mask) &&
	       FUNC0(net, FUNC1(i->master)) &&
	       FUNC3(i->master, zone);
}