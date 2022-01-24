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
struct sk_buff {int dummy; } ;
struct rhashtable_iter {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;
struct ila_map {int /*<<< orphan*/  node; } ;
struct genl_info {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct ila_map*) ; 
 int FUNC1 (struct ila_map*) ; 
 struct net* FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ila_map*) ; 
 int /*<<< orphan*/  ila_net_id ; 
 int /*<<< orphan*/ * FUNC4 (struct ila_net*,struct ila_map*) ; 
 struct ila_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct rhashtable_iter*) ; 
 struct ila_map* FUNC9 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC11 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  rht_params ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC2(info);
	struct ila_net *ilan = FUNC5(net, ila_net_id);
	struct rhashtable_iter iter;
	struct ila_map *ila;
	spinlock_t *lock;
	int ret = 0;

	FUNC7(&ilan->xlat.rhash_table, &iter);
	FUNC10(&iter);

	for (;;) {
		ila = FUNC9(&iter);

		if (FUNC0(ila)) {
			if (FUNC1(ila) == -EAGAIN)
				continue;
			ret = FUNC1(ila);
			goto done;
		} else if (!ila) {
			break;
		}

		lock = FUNC4(ilan, ila);

		FUNC12(lock);

		ret = FUNC6(&ilan->xlat.rhash_table,
					     &ila->node, rht_params);
		if (!ret)
			FUNC3(ila);

		FUNC13(lock);

		if (ret)
			break;
	}

done:
	FUNC11(&iter);
	FUNC8(&iter);
	return ret;
}