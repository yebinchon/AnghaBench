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
struct token {int dummy; } ;
struct element {struct element* list_next; } ;

/* Variables and functions */
 struct element* FUNC0 (int,int) ; 
 struct element* element_list ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct element *FUNC3(struct token *type)
{
	struct element *e = FUNC0(1, sizeof(*e));
	if (!e) {
		FUNC2(NULL);
		FUNC1(1);
	}
	e->list_next = element_list;
	element_list = e;
	return e;
}