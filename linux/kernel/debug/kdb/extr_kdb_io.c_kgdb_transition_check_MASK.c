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

/* Variables and functions */
 int /*<<< orphan*/  DOING_KGDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KGDB_TRANS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(char *buffer)
{
	if (buffer[0] != '+' && buffer[0] != '$') {
		FUNC0(KGDB_TRANS);
		FUNC2("%s", buffer);
	} else {
		int slen = FUNC4(buffer);
		if (slen > 3 && buffer[slen - 3] == '#') {
			FUNC1(buffer);
			FUNC3(buffer, "kgdb");
			FUNC0(DOING_KGDB);
			return 1;
		}
	}
	return 0;
}