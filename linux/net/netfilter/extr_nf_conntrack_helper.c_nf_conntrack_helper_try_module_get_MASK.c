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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct nf_conntrack_helper {int /*<<< orphan*/  me; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 struct nf_conntrack_helper* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

struct nf_conntrack_helper *
FUNC7(const char *name, u16 l3num, u8 protonum)
{
	struct nf_conntrack_helper *h;

	FUNC2();

	h = FUNC0(name, l3num, protonum);
#ifdef CONFIG_MODULES
	if (h == NULL) {
		rcu_read_unlock();
		if (request_module("nfct-helper-%s", name) == 0) {
			rcu_read_lock();
			h = __nf_conntrack_helper_find(name, l3num, protonum);
		} else {
			return h;
		}
	}
#endif
	if (h != NULL && !FUNC6(h->me))
		h = NULL;
	if (h != NULL && !FUNC4(&h->refcnt)) {
		FUNC1(h->me);
		h = NULL;
	}

	FUNC3();

	return h;
}