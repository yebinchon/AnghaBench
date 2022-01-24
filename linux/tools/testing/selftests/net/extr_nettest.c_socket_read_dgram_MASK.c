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
struct in6_addr {int /*<<< orphan*/  s6_addr; } ;
struct sockaddr_in6 {int sin6_scope_id; struct in6_addr sin6_addr; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_family; struct in_addr sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock_args {int expected_ifindex; scalar_t__ version; scalar_t__ dev; } ;
struct msghdr {void* msg_name; int msg_namelen; int msg_iovlen; int msg_controllen; void* msg_control; struct iovec* msg_iov; } ;
struct iovec {int iov_len; void* iov_base; } ;
struct cmsghdr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  cmsgbuf ;
typedef  void* caddr_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ EACCES ; 
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 scalar_t__ errno ; 
 int FUNC1 (struct msghdr*) ; 
 int /*<<< orphan*/  interactive ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,char*,int,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ server_mode ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char* FUNC12 (scalar_t__) ; 
 scalar_t__ try_broadcast ; 

__attribute__((used)) static int FUNC13(int sd, struct sock_args *args)
{
	unsigned char addr[sizeof(struct sockaddr_in6)];
	struct sockaddr *sa = (struct sockaddr *) addr;
	socklen_t alen = sizeof(addr);
	struct iovec iov[2];
	struct msghdr m = {
		.msg_name = (caddr_t)addr,
		.msg_namelen = alen,
		.msg_iov = iov,
		.msg_iovlen = 1,
	};
	unsigned char cmsgbuf[256];
	struct cmsghdr *cm = (struct cmsghdr *)cmsgbuf;
	char buf[16*1024];
	int ifindex;
	int len;

	iov[0].iov_base = (caddr_t)buf;
	iov[0].iov_len = sizeof(buf);

	FUNC6(cmsgbuf, 0, sizeof(cmsgbuf));
	m.msg_control = (caddr_t)cm;
	m.msg_controllen = sizeof(cmsgbuf);

	len = FUNC7(sd, &m, 0);
	if (len == 0) {
		FUNC5("peer closed connection.\n");
		return 0;
	} else if (len < 0) {
		FUNC5("failed to read message: %d: %s\n",
			errno, FUNC12(errno));
		return -1;
	}

	buf[len] = '\0';

	FUNC2("Message from:", sa);
	FUNC5("    %.24s%s\n", buf, len > 24 ? " ..." : "");

	ifindex = FUNC1(&m);
	if (args->expected_ifindex) {
		if (args->expected_ifindex != ifindex) {
			FUNC4("Device index mismatch: expected %d have %d\n",
				  args->expected_ifindex, ifindex);
			return -1;
		}
		FUNC5("Device index matches: expected %d have %d\n",
			args->expected_ifindex, ifindex);
	}

	if (!interactive && server_mode) {
		if (sa->sa_family == AF_INET6) {
			struct sockaddr_in6 *s6 = (struct sockaddr_in6 *) sa;
			struct in6_addr *in6 = &s6->sin6_addr;

			if (FUNC0(in6)) {
				const uint32_t *pa = (uint32_t *) &in6->s6_addr;
				struct in_addr in4;
				struct sockaddr_in *sin;

				sin = (struct sockaddr_in *) addr;
				pa += 3;
				in4.s_addr = *pa;
				sin->sin_addr = in4;
				sin->sin_family = AF_INET;
				if (FUNC8(sd, addr, alen,
						  ifindex, AF_INET) < 0)
					goto out_err;
			}
		}
again:
		iov[0].iov_len = len;

		if (args->version == AF_INET6) {
			struct sockaddr_in6 *s6 = (struct sockaddr_in6 *) sa;

			if (args->dev) {
				/* avoid PKTINFO conflicts with bindtodev */
				if (FUNC10(sd, buf, len, 0,
					   (void *) addr, alen) < 0)
					goto out_err;
			} else {
				/* kernel is allowing scope_id to be set to VRF
				 * index for LLA. for sends to global address
				 * reset scope id
				 */
				s6->sin6_scope_id = ifindex;
				if (FUNC9(sd, &m, 0) < 0)
					goto out_err;
			}
		} else {
			int err;

			err = FUNC9(sd, &m, 0);
			if (err < 0) {
				if (errno == EACCES && try_broadcast) {
					try_broadcast = 0;
					if (!FUNC11(sd))
						goto again;
					errno = EACCES;
				}
				goto out_err;
			}
		}
		FUNC5("Sent message:\n");
		FUNC5("    %.24s%s\n", buf, len > 24 ? " ..." : "");
	}

	return 1;
out_err:
	FUNC3("failed to send msg to peer");
	return -1;
}