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
struct string_list {int /*<<< orphan*/  tag; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 struct string_list* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

struct string_list *FUNC2(struct string_list *node)
{
	struct string_list *newnode;

	newnode = FUNC0(sizeof(*newnode));
	newnode->string = FUNC1(node->string);
	newnode->tag = node->tag;

	return newnode;
}