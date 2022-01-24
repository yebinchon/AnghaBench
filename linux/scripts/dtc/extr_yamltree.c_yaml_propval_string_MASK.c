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
typedef  int /*<<< orphan*/  yaml_event_t ;
typedef  int /*<<< orphan*/  yaml_emitter_t ;
typedef  int /*<<< orphan*/  yaml_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  YAML_DOUBLE_QUOTED_SCALAR_STYLE ; 
 scalar_t__ YAML_STR_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(yaml_emitter_t *emitter, char *str, int len)
{
	yaml_event_t event;
	int i;

	FUNC0(str[len-1] == '\0');

	/* Make sure the entire string is in the lower 7-bit ascii range */
	for (i = 0; i < len; i++)
		FUNC0(FUNC1(str[i]));

	FUNC3(&event, NULL,
		(yaml_char_t *)YAML_STR_TAG, (yaml_char_t*)str,
		len-1, 0, 1, YAML_DOUBLE_QUOTED_SCALAR_STYLE);
	FUNC2(emitter, &event);
}