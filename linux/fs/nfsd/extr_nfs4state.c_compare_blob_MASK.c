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
struct xdr_netobj {scalar_t__ len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC1(const struct xdr_netobj *o1, const struct xdr_netobj *o2)
{
	if (o1->len < o2->len)
		return -1;
	if (o1->len > o2->len)
		return 1;
	return FUNC0(o1->data, o2->data, o1->len);
}