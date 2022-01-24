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
typedef  scalar_t__ u32 ;
typedef  void tcindex_filter_result ;
struct tcindex_data {scalar_t__ alloc_hash; scalar_t__ perfect; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tcf_proto*,scalar_t__) ; 
 struct tcindex_data* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 void* FUNC3 (struct tcindex_data*,scalar_t__) ; 

__attribute__((used)) static void *FUNC4(struct tcf_proto *tp, u32 handle)
{
	struct tcindex_data *p = FUNC1(tp->root);
	struct tcindex_filter_result *r;

	FUNC0("tcindex_get(tp %p,handle 0x%08x)\n", tp, handle);
	if (p->perfect && handle >= p->alloc_hash)
		return NULL;
	r = FUNC3(p, handle);
	return r && FUNC2(r) ? r : NULL;
}