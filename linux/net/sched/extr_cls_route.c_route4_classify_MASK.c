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
typedef  size_t u32 ;
struct tcf_result {int dummy; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct sk_buff {int dummy; } ;
struct route4_head {int /*<<< orphan*/ * table; TYPE_1__* fastmap; } ;
struct route4_filter {size_t id; int iif; int /*<<< orphan*/  next; struct tcf_result res; } ;
struct route4_bucket {int /*<<< orphan*/ * ht; } ;
struct dst_entry {size_t tclassid; } ;
struct TYPE_2__ {size_t id; int iif; struct route4_filter* filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct route4_filter* ROUTE4_FAILURE ; 
 int /*<<< orphan*/  fastmap_lock ; 
 int FUNC1 (struct sk_buff*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (size_t,int) ; 
 size_t FUNC4 (size_t) ; 
 size_t FUNC5 (int) ; 
 size_t FUNC6 (size_t) ; 
 size_t FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct route4_head*,size_t,int,struct route4_filter*) ; 
 struct dst_entry* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, const struct tcf_proto *tp,
			   struct tcf_result *res)
{
	struct route4_head *head = FUNC2(tp->root);
	struct dst_entry *dst;
	struct route4_bucket *b;
	struct route4_filter *f;
	u32 id, h;
	int iif, dont_cache = 0;

	dst = FUNC9(skb);
	if (!dst)
		goto failure;

	id = dst->tclassid;

	iif = FUNC1(skb);

	h = FUNC3(id, iif);

	FUNC10(&fastmap_lock);
	if (id == head->fastmap[h].id &&
	    iif == head->fastmap[h].iif &&
	    (f = head->fastmap[h].filter) != NULL) {
		if (f == ROUTE4_FAILURE) {
			FUNC11(&fastmap_lock);
			goto failure;
		}

		*res = f->res;
		FUNC11(&fastmap_lock);
		return 0;
	}
	FUNC11(&fastmap_lock);

	h = FUNC6(id);

restart:
	b = FUNC2(head->table[h]);
	if (b) {
		for (f = FUNC2(b->ht[FUNC4(id)]);
		     f;
		     f = FUNC2(f->next))
			if (f->id == id)
				FUNC0();

		for (f = FUNC2(b->ht[FUNC5(iif)]);
		     f;
		     f = FUNC2(f->next))
			if (f->iif == iif)
				FUNC0();

		for (f = FUNC2(b->ht[FUNC7()]);
		     f;
		     f = FUNC2(f->next))
			FUNC0();
	}
	if (h < 256) {
		h = 256;
		id &= ~0xFFFF;
		goto restart;
	}

	if (!dont_cache)
		FUNC8(head, id, iif, ROUTE4_FAILURE);
failure:
	return -1;
}