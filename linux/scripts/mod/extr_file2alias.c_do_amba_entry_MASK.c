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
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  amba_id ; 
 int /*<<< orphan*/  FUNC1 (char**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,int) ; 
 int id ; 
 int mask ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			 void *symval, char *alias)
{
	unsigned int digit;
	char *p = alias;
	FUNC0(symval, amba_id, id);
	FUNC0(symval, amba_id, mask);

	if ((id & mask) != id)
		FUNC2("%s: Masked-off bit(s) of AMBA device ID are non-zero: "
		      "id=0x%08X, mask=0x%08X.  Please fix this driver.\n",
		      filename, id, mask);

	p += FUNC3(alias, "amba:d");
	for (digit = 0; digit < 8; digit++)
		FUNC1(&p,
				   (id >> (4 * (7 - digit))) & 0xf,
				   (mask >> (4 * (7 - digit))) & 0xf);

	return 1;
}