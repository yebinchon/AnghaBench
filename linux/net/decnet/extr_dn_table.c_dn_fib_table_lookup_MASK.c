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
struct flowidn {scalar_t__ flowidn_scope; int /*<<< orphan*/  daddr; } ;
struct dn_zone {int /*<<< orphan*/  dz_order; struct dn_zone* dz_next; } ;
struct dn_hash {struct dn_zone* dh_zone_list; } ;
struct dn_fib_table {scalar_t__ data; } ;
struct dn_fib_res {scalar_t__ scope; int /*<<< orphan*/  prefixlen; int /*<<< orphan*/  type; } ;
struct dn_fib_node {int fn_state; scalar_t__ fn_scope; int /*<<< orphan*/  fn_type; int /*<<< orphan*/  fn_key; struct dn_fib_node* fn_next; } ;
typedef  int /*<<< orphan*/  dn_fib_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dn_fib_node*) ; 
 int DN_S_ACCESSED ; 
 int DN_S_ZOMBIE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flowidn const*,struct dn_fib_res*) ; 
 int /*<<< orphan*/  dn_fib_tables_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dn_fib_node* FUNC4 (int /*<<< orphan*/ ,struct dn_zone*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dn_zone*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dn_fib_table *tb, const struct flowidn *flp, struct dn_fib_res *res)
{
	int err;
	struct dn_zone *dz;
	struct dn_hash *t = (struct dn_hash *)tb->data;

	FUNC6(&dn_fib_tables_lock);
	for(dz = t->dh_zone_list; dz; dz = dz->dz_next) {
		struct dn_fib_node *f;
		dn_fib_key_t k = FUNC5(flp->daddr, dz);

		for(f = FUNC4(k, dz); f; f = f->fn_next) {
			if (!FUNC2(k, f->fn_key)) {
				if (FUNC3(k, f->fn_key))
					break;
				else
					continue;
			}

			f->fn_state |= DN_S_ACCESSED;

			if (f->fn_state&DN_S_ZOMBIE)
				continue;

			if (f->fn_scope < flp->flowidn_scope)
				continue;

			err = FUNC1(f->fn_type, FUNC0(f), flp, res);

			if (err == 0) {
				res->type = f->fn_type;
				res->scope = f->fn_scope;
				res->prefixlen = dz->dz_order;
				goto out;
			}
			if (err < 0)
				goto out;
		}
	}
	err = 1;
out:
	FUNC7(&dn_fib_tables_lock);
	return err;
}