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
typedef  int uint64_t ;
struct stats {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; int /*<<< orphan*/  uid; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  member_0; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  si_other ;
typedef  int /*<<< orphan*/  message ;
typedef  int /*<<< orphan*/  cookie ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PORT ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_COOKIE ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,struct stats*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  map_fd ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC10 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void)
{
	struct sockaddr_in si_other = {0};
	struct sockaddr_in si_me = {0};
	struct stats dataEntry;
	int s_rcv, s_send, i, recv_len;
	char message = 'a';
	char buf;
	uint64_t cookie;
	int res;
	socklen_t cookie_len = sizeof(cookie);
	socklen_t slen = sizeof(si_other);

	s_rcv = FUNC11(PF_INET, SOCK_DGRAM, 0);
	if (s_rcv < 0)
		FUNC3(1, errno, "rcv socket creat failed!\n");
	si_other.sin_family = AF_INET;
	si_other.sin_port = FUNC5(PORT);
	if (FUNC6("127.0.0.1", &si_other.sin_addr) == 0)
		FUNC3(1, errno, "inet_aton\n");
	if (FUNC0(s_rcv, (struct sockaddr *)&si_other, sizeof(si_other)) == -1)
		FUNC3(1, errno, "bind\n");
	s_send = FUNC11(PF_INET, SOCK_DGRAM, 0);
	if (s_send < 0)
		FUNC3(1, errno, "send socket creat failed!\n");
	res = FUNC4(s_send, SOL_SOCKET, SO_COOKIE, &cookie, &cookie_len);
	if (res < 0)
		FUNC8("get cookie failed: %s\n", FUNC12(errno));
	res = FUNC1(map_fd, &cookie, &dataEntry);
	if (res != -1)
		FUNC3(1, errno, "socket stat found while flow not active\n");
	for (i = 0; i < 10; i++) {
		res = FUNC10(s_send, &message, sizeof(message), 0,
			     (struct sockaddr *)&si_other, slen);
		if (res == -1)
			FUNC3(1, errno, "send\n");
		if (res != sizeof(message))
			FUNC3(1, 0, "%uB != %luB\n", res, sizeof(message));
		recv_len = FUNC9(s_rcv, &buf, sizeof(buf), 0,
			     (struct sockaddr *)&si_me, &slen);
		if (recv_len < 0)
			FUNC3(1, errno, "receive\n");
		res = FUNC7(&(si_other.sin_addr), &(si_me.sin_addr),
			   sizeof(si_me.sin_addr));
		if (res != 0)
			FUNC3(1, EFAULT, "sender addr error: %d\n", res);
		FUNC8("Message received: %c\n", buf);
		res = FUNC1(map_fd, &cookie, &dataEntry);
		if (res < 0)
			FUNC3(1, errno, "lookup sk stat failed, cookie: %lu\n",
			      cookie);
		FUNC8("cookie: %lu, uid: 0x%x, Packet Count: %lu,"
			" Bytes Count: %lu\n\n", cookie, dataEntry.uid,
			dataEntry.packets, dataEntry.bytes);
	}
	FUNC2(s_send);
	FUNC2(s_rcv);
}