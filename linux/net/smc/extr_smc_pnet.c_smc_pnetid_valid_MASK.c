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
 int SMC_MAX_PNETID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (char const*) ; 
 size_t FUNC4 (char*) ; 
 char FUNC5 (char) ; 

__attribute__((used)) static bool FUNC6(const char *pnet_name, char *pnetid)
{
	char *bf = FUNC3(pnet_name);
	size_t len = FUNC4(bf);
	char *end = bf + len;

	if (!len)
		return false;
	while (--end >= bf && FUNC2(*end))
		;
	if (end - bf >= SMC_MAX_PNETID_LEN)
		return false;
	while (bf <= end) {
		if (!FUNC0(*bf))
			return false;
		*pnetid++ = FUNC1(*bf) ? FUNC5(*bf) : *bf;
		bf++;
	}
	*pnetid = '\0';
	return true;
}