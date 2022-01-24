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
struct bt_ctf_field {int dummy; } ;
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  numstr ;

/* Variables and functions */
 int FUNC0 (struct bt_ctf_field*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned int) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 char* FUNC8 (size_t) ; 

__attribute__((used)) static int FUNC9(struct bt_ctf_field *field, const char *string)
{
	char *buffer = NULL;
	size_t len = FUNC6(string), i, p;
	int err;

	for (i = p = 0; i < len; i++, p++) {
		if (FUNC2(string[i])) {
			if (!buffer)
				continue;
			buffer[p] = string[i];
		} else {
			char numstr[5];

			FUNC5(numstr, sizeof(numstr), "\\x%02x",
				 (unsigned int)(string[i]) & 0xff);

			if (!buffer) {
				buffer = FUNC8(i + (len - i) * 4 + 2);
				if (!buffer) {
					FUNC4("failed to set unprintable string '%s'\n", string);
					return FUNC0(field, "UNPRINTABLE-STRING");
				}
				if (i > 0)
					FUNC7(buffer, string, i);
			}
			FUNC3(buffer + p, numstr, 4);
			p += 3;
		}
	}

	if (!buffer)
		return FUNC0(field, string);
	err = FUNC0(field, buffer);
	FUNC1(buffer);
	return err;
}