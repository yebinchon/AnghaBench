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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_version; } ;
struct TYPE_3__ {int /*<<< orphan*/  policy; } ;
struct TYPE_4__ {TYPE_1__ u; int /*<<< orphan*/  done; int /*<<< orphan*/ * dump; int /*<<< orphan*/  msg_portid; int /*<<< orphan*/  msg_version; } ;
struct pfkey_sock {int /*<<< orphan*/  dump_lock; TYPE_2__ dump; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  XFRM_POLICY_TYPE_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pfkey_sock*) ; 
 int /*<<< orphan*/ * pfkey_dump_sp ; 
 int /*<<< orphan*/  pfkey_dump_sp_done ; 
 struct pfkey_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
	struct pfkey_sock *pfk = FUNC3(sk);

	FUNC0(&pfk->dump_lock);
	if (pfk->dump.dump != NULL) {
		FUNC1(&pfk->dump_lock);
		return -EBUSY;
	}

	pfk->dump.msg_version = hdr->sadb_msg_version;
	pfk->dump.msg_portid = hdr->sadb_msg_pid;
	pfk->dump.dump = pfkey_dump_sp;
	pfk->dump.done = pfkey_dump_sp_done;
	FUNC4(&pfk->dump.u.policy, XFRM_POLICY_TYPE_MAIN);
	FUNC1(&pfk->dump_lock);

	return FUNC2(pfk);
}