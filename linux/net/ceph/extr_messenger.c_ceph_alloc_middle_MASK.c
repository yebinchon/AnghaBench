#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  middle_len; int /*<<< orphan*/  type; } ;
struct ceph_msg {int middle; TYPE_1__ hdr; } ;
struct ceph_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ceph_msg*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ceph_connection *con, struct ceph_msg *msg)
{
	int type = FUNC4(msg->hdr.type);
	int middle_len = FUNC5(msg->hdr.middle_len);

	FUNC3("alloc_middle %p type %d %s middle_len %d\n", msg, type,
	     FUNC2(type), middle_len);
	FUNC0(!middle_len);
	FUNC0(msg->middle);

	msg->middle = FUNC1(middle_len, GFP_NOFS);
	if (!msg->middle)
		return -ENOMEM;
	return 0;
}