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
struct ceph_x_info {int /*<<< orphan*/  have_keys; } ;
struct ceph_auth_client {int /*<<< orphan*/  want_keys; struct ceph_x_info* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_auth_client*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ceph_auth_client *ac)
{
	struct ceph_x_info *xi = ac->private;
	int need;

	FUNC0(ac, &need);
	FUNC1("ceph_x_should_authenticate want=%d need=%d have=%d\n",
	     ac->want_keys, need, xi->have_keys);
	return need != 0;
}