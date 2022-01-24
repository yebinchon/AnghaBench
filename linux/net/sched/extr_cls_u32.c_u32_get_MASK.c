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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_proto {int /*<<< orphan*/  root; struct tc_u_common* data; } ;
typedef  void tc_u_hnode ;
struct tc_u_common {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TC_U32_ROOT ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct tc_u_common*,scalar_t__) ; 
 void* FUNC4 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(struct tcf_proto *tp, u32 handle)
{
	struct tc_u_hnode *ht;
	struct tc_u_common *tp_c = tp->data;

	if (FUNC0(handle) == TC_U32_ROOT)
		ht = FUNC2(tp->root);
	else
		ht = FUNC3(tp_c, FUNC0(handle));

	if (!ht)
		return NULL;

	if (FUNC1(handle) == 0)
		return ht;

	return FUNC4(ht, handle);
}