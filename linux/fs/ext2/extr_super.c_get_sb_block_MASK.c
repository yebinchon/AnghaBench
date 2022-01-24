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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 unsigned long FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

__attribute__((used)) static unsigned long FUNC3(void **data)
{
	unsigned long 	sb_block;
	char 		*options = (char *) *data;

	if (!options || FUNC2(options, "sb=", 3) != 0)
		return 1;	/* Default location */
	options += 3;
	sb_block = FUNC1(options, &options, 0);
	if (*options && *options != ',') {
		FUNC0("EXT2-fs: Invalid sb specification: %s\n",
		       (char *) *data);
		return 1;
	}
	if (*options == ',')
		options++;
	*data = (void *) options;
	return sb_block;
}