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
struct publication {int /*<<< orphan*/  key; int /*<<< orphan*/  port; int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; } ;
struct distr_item {void* key; void* port; void* upper; void* lower; void* type; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct distr_item *i, struct publication *p)
{
	i->type = FUNC0(p->type);
	i->lower = FUNC0(p->lower);
	i->upper = FUNC0(p->upper);
	i->port = FUNC0(p->port);
	i->key = FUNC0(p->key);
}