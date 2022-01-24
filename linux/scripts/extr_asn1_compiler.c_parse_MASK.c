#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct type {int flags; struct token* name; TYPE_1__* element; } ;
struct token {scalar_t__ token_type; int line; char* content; } ;
struct TYPE_2__ {struct type* type_def; } ;

/* Variables and functions */
 scalar_t__ TOKEN_ASSIGNMENT ; 
 scalar_t__ TOKEN_TYPE_NAME ; 
 int TYPE_STOP_MARKER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* filename ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 int /*<<< orphan*/  nr_actions ; 
 TYPE_1__* FUNC3 (struct token**,struct token*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 struct type* type_list ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct token *cursor;
	struct type *type;

	/* Parse one type definition statement at a time */
	type = type_list;
	do {
		cursor = type->name;

		if (cursor[0].token_type != TOKEN_TYPE_NAME ||
		    cursor[1].token_type != TOKEN_ASSIGNMENT)
			FUNC0();
		cursor += 2;

		type->element = FUNC3(&cursor, type[1].name, NULL);
		type->element->type_def = type;

		if (cursor != type[1].name) {
			FUNC2(stderr, "%s:%d: Parse error at token '%s'\n",
				filename, cursor->line, cursor->content);
			FUNC1(1);
		}

	} while (type++, !(type->flags & TYPE_STOP_MARKER));

	FUNC4("Extracted %u actions\n", nr_actions);
}