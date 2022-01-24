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
struct context {scalar_t__ len; int /*<<< orphan*/ * str; scalar_t__ type; scalar_t__ role; scalar_t__ user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 

__attribute__((used)) static inline void FUNC2(struct context *c)
{
	c->user = c->role = c->type = 0;
	FUNC0(c->str);
	c->str = NULL;
	c->len = 0;
	FUNC1(c);
}