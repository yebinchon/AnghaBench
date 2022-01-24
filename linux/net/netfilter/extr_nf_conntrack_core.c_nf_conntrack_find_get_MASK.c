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
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nf_conntrack_tuple_hash* FUNC0 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_tuple const*,struct net*) ; 

struct nf_conntrack_tuple_hash *
FUNC2(struct net *net, const struct nf_conntrack_zone *zone,
		      const struct nf_conntrack_tuple *tuple)
{
	return FUNC0(net, zone, tuple,
				       FUNC1(tuple, net));
}