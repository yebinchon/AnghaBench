#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sctp_transport {TYPE_3__* asoc; int /*<<< orphan*/  ipaddr; } ;
struct sctp_hash_cmp_arg {scalar_t__ lport; int /*<<< orphan*/  net; int /*<<< orphan*/  paddr; } ;
struct rhashtable_compare_arg {struct sctp_hash_cmp_arg* key; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;
struct TYPE_5__ {TYPE_1__ bind_addr; int /*<<< orphan*/  sk; } ;
struct TYPE_6__ {TYPE_2__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct rhashtable_compare_arg *arg,
				const void *ptr)
{
	struct sctp_transport *t = (struct sctp_transport *)ptr;
	const struct sctp_hash_cmp_arg *x = arg->key;
	int err = 1;

	if (!FUNC2(&t->ipaddr, x->paddr))
		return err;
	if (!FUNC3(t))
		return err;

	if (!FUNC1(FUNC5(t->asoc->base.sk), x->net))
		goto out;
	if (x->lport != FUNC0(t->asoc->base.bind_addr.port))
		goto out;

	err = 0;
out:
	FUNC4(t);
	return err;
}