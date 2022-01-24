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
struct tipc_nlist {int /*<<< orphan*/  self; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_nlist*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct tipc_nlist *nl, u32 self)
{
	FUNC1(nl, 0, sizeof(*nl));
	FUNC0(&nl->list);
	nl->self = self;
}