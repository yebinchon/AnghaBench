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
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct rsvp_session {int /*<<< orphan*/ * ht; int /*<<< orphan*/  next; } ;
struct rsvp_head {int /*<<< orphan*/ * ht; int /*<<< orphan*/  next; } ;
struct rsvp_filter {int /*<<< orphan*/  next; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsvp_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*,struct rsvp_filter*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tcf_proto *tp, bool rtnl_held,
			 struct netlink_ext_ack *extack)
{
	struct rsvp_head *data = FUNC4(tp->root);
	int h1, h2;

	if (data == NULL)
		return;

	for (h1 = 0; h1 < 256; h1++) {
		struct rsvp_session *s;

		while ((s = FUNC4(data->ht[h1])) != NULL) {
			FUNC0(data->ht[h1], s->next);

			for (h2 = 0; h2 <= 16; h2++) {
				struct rsvp_filter *f;

				while ((f = FUNC4(s->ht[h2])) != NULL) {
					FUNC2(s->ht[h2], f->next);
					FUNC3(tp, f);
				}
			}
			FUNC1(s, rcu);
		}
	}
	FUNC1(data, rcu);
}