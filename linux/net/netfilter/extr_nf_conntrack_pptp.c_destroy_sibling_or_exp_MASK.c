#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_3__ {scalar_t__ stream_timeout; scalar_t__ timeout; } ;
struct TYPE_4__ {TYPE_1__ gre; } ;
struct nf_conntrack_expect {TYPE_2__ proto; } ;
struct nf_conn {TYPE_2__ proto; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nf_conntrack_tuple_hash* FUNC0 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_tuple const*) ; 
 struct nf_conntrack_expect* FUNC2 (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_expect*) ; 
 struct nf_conntrack_expect* FUNC6 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conntrack_expect*) ; 
 struct nf_conntrack_zone* FUNC8 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int FUNC10(struct net *net, struct nf_conn *ct,
				  const struct nf_conntrack_tuple *t)
{
	const struct nf_conntrack_tuple_hash *h;
	const struct nf_conntrack_zone *zone;
	struct nf_conntrack_expect *exp;
	struct nf_conn *sibling;

	FUNC9("trying to timeout ct or exp for tuple ");
	FUNC1(t);

	zone = FUNC8(ct);
	h = FUNC0(net, zone, t);
	if (h)  {
		sibling = FUNC6(h);
		FUNC9("setting timeout of conntrack %p to 0\n", sibling);
		sibling->proto.gre.timeout	  = 0;
		sibling->proto.gre.stream_timeout = 0;
		FUNC4(sibling);
		FUNC5(sibling);
		return 1;
	} else {
		exp = FUNC2(net, zone, t);
		if (exp) {
			FUNC9("unexpect_related of expect %p\n", exp);
			FUNC7(exp);
			FUNC3(exp);
			return 1;
		}
	}
	return 0;
}