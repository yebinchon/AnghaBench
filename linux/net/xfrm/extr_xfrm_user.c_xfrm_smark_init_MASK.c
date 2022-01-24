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
struct xfrm_mark {int v; int m; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 size_t XFRMA_SET_MARK ; 
 size_t XFRMA_SET_MARK_MASK ; 
 void* FUNC0 (struct nlattr*) ; 

__attribute__((used)) static void FUNC1(struct nlattr **attrs, struct xfrm_mark *m)
{
	if (attrs[XFRMA_SET_MARK]) {
		m->v = FUNC0(attrs[XFRMA_SET_MARK]);
		if (attrs[XFRMA_SET_MARK_MASK])
			m->m = FUNC0(attrs[XFRMA_SET_MARK_MASK]);
		else
			m->m = 0xffffffff;
	} else {
		m->v = m->m = 0;
	}
}