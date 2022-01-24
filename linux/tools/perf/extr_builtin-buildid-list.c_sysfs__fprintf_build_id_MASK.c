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
typedef  int /*<<< orphan*/  sbuild_id ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int SBUILD_ID_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(FILE *fp)
{
	char sbuild_id[SBUILD_ID_SIZE];
	int ret;

	ret = FUNC1("/", sbuild_id);
	if (ret != sizeof(sbuild_id))
		return ret < 0 ? ret : -EINVAL;

	return FUNC0(fp, "%s\n", sbuild_id);
}