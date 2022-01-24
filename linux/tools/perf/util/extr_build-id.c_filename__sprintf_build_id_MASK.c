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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  build_id ;

/* Variables and functions */
 int BUILD_ID_SIZE ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 

int FUNC2(const char *pathname, char *sbuild_id)
{
	u8 build_id[BUILD_ID_SIZE];
	int ret;

	ret = FUNC1(pathname, build_id, sizeof(build_id));
	if (ret < 0)
		return ret;
	else if (ret != sizeof(build_id))
		return -EINVAL;

	return FUNC0(build_id, sizeof(build_id), sbuild_id);
}