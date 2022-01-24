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
struct ceph_fsid {int* fsid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int FUNC3 (char*,char*,int*) ; 

__attribute__((used)) static int FUNC4(const char *str, struct ceph_fsid *fsid)
{
	int i = 0;
	char tmp[3];
	int err = -EINVAL;
	int d;

	FUNC0("parse_fsid '%s'\n", str);
	tmp[2] = 0;
	while (*str && i < 16) {
		if (FUNC1(*str)) {
			str++;
			continue;
		}
		if (!FUNC2(str[0]) || !FUNC2(str[1]))
			break;
		tmp[0] = str[0];
		tmp[1] = str[1];
		if (FUNC3(tmp, "%x", &d) < 1)
			break;
		fsid->fsid[i] = d & 0xff;
		i++;
		str += 2;
	}

	if (i == 16)
		err = 0;
	FUNC0("parse_fsid ret %d got fsid %pU\n", err, fsid);
	return err;
}