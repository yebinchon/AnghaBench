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
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  SDF_NORECOVERY ; 
 int FUNC0 (struct gfs2_sbd*,unsigned int) ; 
 int FUNC1 (char const*,char*,unsigned int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
	unsigned jid;
	int rv;

	rv = FUNC1(buf, "%u", &jid);
	if (rv != 1)
		return -EINVAL;

	if (FUNC2(SDF_NORECOVERY, &sdp->sd_flags)) {
		rv = -ESHUTDOWN;
		goto out;
	}

	rv = FUNC0(sdp, jid);
out:
	return rv ? rv : len;
}