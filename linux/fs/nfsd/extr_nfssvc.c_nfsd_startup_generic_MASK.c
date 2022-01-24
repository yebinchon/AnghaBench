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
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  nfsd_users ; 

__attribute__((used)) static int FUNC3(int nrservs)
{
	int ret;

	if (nfsd_users++)
		return 0;

	ret = FUNC1();
	if (ret)
		goto dec_users;

	ret = FUNC0();
	if (ret)
		goto out_file_cache;
	return 0;

out_file_cache:
	FUNC2();
dec_users:
	nfsd_users--;
	return ret;
}