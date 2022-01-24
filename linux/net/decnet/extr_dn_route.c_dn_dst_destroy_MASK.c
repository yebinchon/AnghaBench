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
struct dst_entry {int dummy; } ;
struct dn_route {scalar_t__ n; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct dst_entry *dst)
{
	struct dn_route *rt = (struct dn_route *) dst;

	if (rt->n)
		FUNC1(rt->n);
	FUNC0(dst);
}