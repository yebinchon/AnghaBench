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
struct nf_conntrack_tuple_hash {int /*<<< orphan*/  tuple; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nf_conntrack_tuple_hash*) ; 
 scalar_t__ FUNC1 (struct net const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*) ; 
 scalar_t__ FUNC4 (struct nf_conntrack_tuple const*,int /*<<< orphan*/ *) ; 
 struct nf_conn* FUNC5 (struct nf_conntrack_tuple_hash*) ; 
 scalar_t__ FUNC6 (struct nf_conn*,struct nf_conntrack_zone const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC7(struct nf_conntrack_tuple_hash *h,
		const struct nf_conntrack_tuple *tuple,
		const struct nf_conntrack_zone *zone,
		const struct net *net)
{
	struct nf_conn *ct = FUNC5(h);

	/* A conntrack can be recreated with the equal tuple,
	 * so we need to check that the conntrack is confirmed
	 */
	return FUNC4(tuple, &h->tuple) &&
	       FUNC6(ct, zone, FUNC0(h)) &&
	       FUNC2(ct) &&
	       FUNC1(net, FUNC3(ct));
}