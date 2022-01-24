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
struct msghdr {int msg_iovlen; void* msg_controllen; void* msg_control; int /*<<< orphan*/  msg_namelen; void* msg_name; struct iovec* msg_iov; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
struct in_pktinfo {int ipi_ifindex; } ;
struct in6_pktinfo {int ipi6_ifindex; } ;
struct cmsghdr {void* cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  cmsgbuf ;
typedef  void* caddr_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 void* FUNC1 (int) ; 
 scalar_t__ EACCES ; 
 int /*<<< orphan*/  IPV6_PKTINFO ; 
 int /*<<< orphan*/  IP_PKTINFO ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  SOL_IPV6 ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  msg ; 
 int /*<<< orphan*/  msglen ; 
 int FUNC4 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ try_broadcast ; 

__attribute__((used)) static int FUNC6(int sd, void *addr, socklen_t alen,
			 int ifindex, int version)
{
	unsigned char cmsgbuf[64];
	struct iovec iov[2];
	struct cmsghdr *cm;
	struct msghdr m;
	int err;

	iov[0].iov_base = msg;
	iov[0].iov_len = msglen;
	m.msg_iov = iov;
	m.msg_iovlen = 1;
	m.msg_name = (caddr_t)addr;
	m.msg_namelen = alen;

	FUNC3(cmsgbuf, 0, sizeof(cmsgbuf));
	cm = (struct cmsghdr *)cmsgbuf;
	m.msg_control = (caddr_t)cm;

	if (version == AF_INET) {
		struct in_pktinfo *pi;

		cm->cmsg_level = SOL_IP;
		cm->cmsg_type = IP_PKTINFO;
		cm->cmsg_len = FUNC1(sizeof(struct in_pktinfo));
		pi = (struct in_pktinfo *)(FUNC0(cm));
		pi->ipi_ifindex = ifindex;

		m.msg_controllen = cm->cmsg_len;

	} else if (version == AF_INET6) {
		struct in6_pktinfo *pi6;

		cm->cmsg_level = SOL_IPV6;
		cm->cmsg_type = IPV6_PKTINFO;
		cm->cmsg_len = FUNC1(sizeof(struct in6_pktinfo));

		pi6 = (struct in6_pktinfo *)(FUNC0(cm));
		pi6->ipi6_ifindex = ifindex;

		m.msg_controllen = cm->cmsg_len;
	}

again:
	err = FUNC4(sd, &m, 0);
	if (err < 0) {
		if (errno == EACCES && try_broadcast) {
			try_broadcast = 0;
			if (!FUNC5(sd))
				goto again;
			errno = EACCES;
		}

		FUNC2("sendmsg failed");
		return 1;
	}

	return 0;
}