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
struct rds_zcopy_cookies {int dummy; } ;
struct msghdr {char* msg_control; int msg_controllen; int msg_flags; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  cmsgbuf ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 struct cmsghdr* FUNC2 (struct msghdr*,struct cmsghdr*) ; 
 int FUNC3 (int) ; 
 int MSG_CTRUNC ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 scalar_t__ RDS_CMSG_ZCOPY_COMPLETION ; 
 scalar_t__ SOL_RDS ; 
 int /*<<< orphan*/  completions ; 
 scalar_t__ FUNC4 (struct rds_zcopy_cookies*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct msghdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int,struct msghdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(int fd)
{
	char cmsgbuf[FUNC3(sizeof(struct rds_zcopy_cookies))];
	struct rds_zcopy_cookies *ck;
	struct cmsghdr *cmsg;
	struct msghdr msg;
	bool ret = false;

	FUNC6(&msg, 0, sizeof(msg));
	msg.msg_control = cmsgbuf;
	msg.msg_controllen = sizeof(cmsgbuf);

	if (FUNC7(fd, &msg, MSG_DONTWAIT))
		return ret;

	if (msg.msg_flags & MSG_CTRUNC)
		FUNC5(1, errno, "recvmsg notification: truncated");

	for (cmsg = FUNC1(&msg); cmsg; cmsg = FUNC2(&msg, cmsg)) {
		if (cmsg->cmsg_level == SOL_RDS &&
		    cmsg->cmsg_type == RDS_CMSG_ZCOPY_COMPLETION) {

			ck = (struct rds_zcopy_cookies *)FUNC0(cmsg);
			completions += FUNC4(ck);
			ret = true;
			break;
		}
		FUNC5(0, 0, "ignoring cmsg at level %d type %d\n",
			    cmsg->cmsg_level, cmsg->cmsg_type);
	}
	return ret;
}