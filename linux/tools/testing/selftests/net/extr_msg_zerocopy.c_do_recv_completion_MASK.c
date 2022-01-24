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
typedef  scalar_t__ uint32_t ;
struct sock_extended_err {scalar_t__ ee_origin; scalar_t__ ee_errno; scalar_t__ ee_data; scalar_t__ ee_info; int ee_code; } ;
struct msghdr {char* msg_control; int msg_controllen; int msg_flags; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef  int /*<<< orphan*/  control ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ IPV6_RECVERR ; 
 scalar_t__ IP_RECVERR ; 
 int MSG_CTRUNC ; 
 int /*<<< orphan*/  MSG_ERRQUEUE ; 
 scalar_t__ PACKET_TX_TIMESTAMP ; 
 int PF_RDS ; 
 scalar_t__ SOL_IP ; 
 scalar_t__ SOL_IPV6 ; 
 scalar_t__ SOL_PACKET ; 
 int SO_EE_CODE_ZEROCOPY_COPIED ; 
 scalar_t__ SO_EE_ORIGIN_ZEROCOPY ; 
 int cfg_verbose ; 
 int /*<<< orphan*/  completions ; 
 int FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ next_completion ; 
 int FUNC5 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int zerocopied ; 

__attribute__((used)) static bool FUNC6(int fd, int domain)
{
	struct sock_extended_err *serr;
	struct msghdr msg = {};
	struct cmsghdr *cm;
	uint32_t hi, lo, range;
	int ret, zerocopy;
	char control[100];

	if (domain == PF_RDS)
		return FUNC2(fd);

	msg.msg_control = control;
	msg.msg_controllen = sizeof(control);

	ret = FUNC5(fd, &msg, MSG_ERRQUEUE);
	if (ret == -1 && errno == EAGAIN)
		return false;
	if (ret == -1)
		FUNC3(1, errno, "recvmsg notification");
	if (msg.msg_flags & MSG_CTRUNC)
		FUNC3(1, errno, "recvmsg notification: truncated");

	cm = FUNC1(&msg);
	if (!cm)
		FUNC3(1, 0, "cmsg: no cmsg");
	if (!((cm->cmsg_level == SOL_IP && cm->cmsg_type == IP_RECVERR) ||
	      (cm->cmsg_level == SOL_IPV6 && cm->cmsg_type == IPV6_RECVERR) ||
	      (cm->cmsg_level == SOL_PACKET && cm->cmsg_type == PACKET_TX_TIMESTAMP)))
		FUNC3(1, 0, "serr: wrong type: %d.%d",
		      cm->cmsg_level, cm->cmsg_type);

	serr = (void *) FUNC0(cm);

	if (serr->ee_origin != SO_EE_ORIGIN_ZEROCOPY)
		FUNC3(1, 0, "serr: wrong origin: %u", serr->ee_origin);
	if (serr->ee_errno != 0)
		FUNC3(1, 0, "serr: wrong error code: %u", serr->ee_errno);

	hi = serr->ee_data;
	lo = serr->ee_info;
	range = hi - lo + 1;

	/* Detect notification gaps. These should not happen often, if at all.
	 * Gaps can occur due to drops, reordering and retransmissions.
	 */
	if (lo != next_completion)
		FUNC4(stderr, "gap: %ld..%ld does not append to %ld\n",
			lo, hi, next_completion);
	next_completion = hi + 1;

	zerocopy = !(serr->ee_code & SO_EE_CODE_ZEROCOPY_COPIED);
	if (zerocopied == -1)
		zerocopied = zerocopy;
	else if (zerocopied != zerocopy) {
		FUNC4(stderr, "serr: inconsistent\n");
		zerocopied = zerocopy;
	}

	if (cfg_verbose >= 2)
		FUNC4(stderr, "completed: %ld (h=%ld l=%ld)\n",
			range, hi, lo);

	completions += range;
	return true;
}