#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* sec; int /*<<< orphan*/  is_attachable; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int MAX_TYPE_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 TYPE_1__* section_names ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(bool attach_type)
{
	int i, len = FUNC0(section_names) * MAX_TYPE_NAME_SIZE;
	char *buf;

	buf = FUNC2(len);
	if (!buf)
		return NULL;

	buf[0] = '\0';
	/* Forge string buf with all available names */
	for (i = 0; i < FUNC0(section_names); i++) {
		if (attach_type && !section_names[i].is_attachable)
			continue;

		if (FUNC4(buf) + FUNC4(section_names[i].sec) + 2 > len) {
			FUNC1(buf);
			return NULL;
		}
		FUNC3(buf, " ");
		FUNC3(buf, section_names[i].sec);
	}

	return buf;
}