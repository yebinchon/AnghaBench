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
struct gfs2_sbd {int /*<<< orphan*/  sd_vfs; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,char*,int,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
	int error, n;

	error = FUNC3(buf, 0, &n);
	if (error)
		return error;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	switch (n) {
	case 0:
		error = FUNC4(sdp->sd_vfs);
		break;
	case 1:
		error = FUNC1(sdp->sd_vfs);
		break;
	default:
		return -EINVAL;
	}

	if (error) {
		FUNC2(sdp, "freeze %d error %d\n", n, error);
		return error;
	}

	return len;
}