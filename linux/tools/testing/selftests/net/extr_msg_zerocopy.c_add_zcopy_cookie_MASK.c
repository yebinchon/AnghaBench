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
typedef  int /*<<< orphan*/  uint32_t ;
struct msghdr {scalar_t__ msg_control; } ;
struct cmsghdr {int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; int /*<<< orphan*/  cmsg_len; } ;
typedef  int /*<<< orphan*/  cookie ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RDS_CMSG_ZCOPY_COOKIE ; 
 int /*<<< orphan*/  SOL_RDS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct msghdr *msg, uint32_t cookie)
{
	struct cmsghdr *cm;

	if (!msg->msg_control)
		FUNC2(1, errno, "NULL cookie");
	cm = (void *)msg->msg_control;
	cm->cmsg_len = FUNC1(sizeof(cookie));
	cm->cmsg_level = SOL_RDS;
	cm->cmsg_type = RDS_CMSG_ZCOPY_COOKIE;
	FUNC3(FUNC0(cm), &cookie, sizeof(cookie));
}