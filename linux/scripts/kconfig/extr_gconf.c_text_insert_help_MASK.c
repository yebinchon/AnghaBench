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
struct menu {int dummy; } ;
struct gstr {int dummy; } ;
typedef  int /*<<< orphan*/  GtkTextIter ;
typedef  int /*<<< orphan*/  GtkTextBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct menu*,struct gstr*) ; 
 char* FUNC9 (struct menu*) ; 
 int /*<<< orphan*/  FUNC10 (struct gstr*) ; 
 char const* FUNC11 (struct gstr*) ; 
 struct gstr FUNC12 () ; 
 int /*<<< orphan*/  tag1 ; 
 int /*<<< orphan*/  tag2 ; 
 int /*<<< orphan*/  text_w ; 

__attribute__((used)) static void FUNC13(struct menu *menu)
{
	GtkTextBuffer *buffer;
	GtkTextIter start, end;
	const char *prompt = FUNC9(menu);
	struct gstr help = FUNC12();

	FUNC8(menu, &help);

	buffer = FUNC6(FUNC0(text_w));
	FUNC2(buffer, &start, &end);
	FUNC1(buffer, &start, &end);
	FUNC7(FUNC0(text_w), 15);

	FUNC3(buffer, &end);
	FUNC5(buffer, &end, prompt, -1, tag1,
					 NULL);
	FUNC4(buffer, "\n\n", 2);
	FUNC3(buffer, &end);
	FUNC5(buffer, &end, FUNC11(&help), -1, tag2,
					 NULL);
	FUNC10(&help);
}