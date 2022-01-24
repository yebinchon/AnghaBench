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
struct sk_buff {scalar_t__ len; } ;
struct rhashtable_iter {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; int /*<<< orphan*/  skb; scalar_t__* args; } ;
struct ila_map {int /*<<< orphan*/  next; } ;
struct ila_dump_iter {int skip; struct rhashtable_iter rhiter; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  ILA_CMD_GET ; 
 scalar_t__ FUNC0 (struct ila_map*) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int FUNC2 (struct ila_map*) ; 
 int FUNC3 (struct ila_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ila_map* FUNC4 (int /*<<< orphan*/ ) ; 
 struct ila_map* FUNC5 (struct rhashtable_iter*) ; 
 struct ila_map* FUNC6 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC7 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct rhashtable_iter*) ; 

int FUNC9(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct ila_dump_iter *iter = (struct ila_dump_iter *)cb->args[0];
	struct rhashtable_iter *rhiter = &iter->rhiter;
	int skip = iter->skip;
	struct ila_map *ila;
	int ret;

	FUNC7(rhiter);

	/* Get first entry */
	ila = FUNC6(rhiter);

	if (ila && !FUNC0(ila) && skip) {
		/* Skip over visited entries */

		while (ila && skip) {
			/* Skip over any ila entries in this list that we
			 * have already dumped.
			 */
			ila = FUNC4(ila->next);
			skip--;
		}
	}

	skip = 0;

	for (;;) {
		if (FUNC0(ila)) {
			ret = FUNC2(ila);
			if (ret == -EAGAIN) {
				/* Table has changed and iter has reset. Return
				 * -EAGAIN to the application even if we have
				 * written data to the skb. The application
				 * needs to deal with this.
				 */

				goto out_ret;
			} else {
				break;
			}
		} else if (!ila) {
			ret = 0;
			break;
		}

		while (ila) {
			ret =  FUNC3(ila, FUNC1(cb->skb).portid,
					     cb->nlh->nlmsg_seq, NLM_F_MULTI,
					     skb, ILA_CMD_GET);
			if (ret)
				goto out;

			skip++;
			ila = FUNC4(ila->next);
		}

		skip = 0;
		ila = FUNC5(rhiter);
	}

out:
	iter->skip = skip;
	ret = (skb->len ? : ret);

out_ret:
	FUNC8(rhiter);
	return ret;
}