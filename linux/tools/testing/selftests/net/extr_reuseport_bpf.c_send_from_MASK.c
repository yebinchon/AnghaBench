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
typedef  int /*<<< orphan*/  uint16_t ;
struct test_params {int /*<<< orphan*/  protocol; int /*<<< orphan*/  send_family; int /*<<< orphan*/  recv_port; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  one ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_FASTOPEN ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int const,struct sockaddr* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr* const) ; 
 struct sockaddr* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sockaddr* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int const,char*,size_t,int /*<<< orphan*/ ,struct sockaddr* const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct test_params p, uint16_t sport, char *buf,
		      size_t len)
{
	struct sockaddr * const saddr = FUNC4(p.send_family, sport);
	struct sockaddr * const daddr =
		FUNC5(p.send_family, p.recv_port);
	const int fd = FUNC9(p.send_family, p.protocol, 0), one = 1;

	if (fd < 0)
		FUNC2(1, errno, "failed to create send socket");

	if (FUNC7(fd, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one)))
		FUNC2(1, errno, "failed to set reuseaddr");

	if (FUNC0(fd, saddr, FUNC8()))
		FUNC2(1, errno, "failed to bind send socket");

	if (FUNC6(fd, buf, len, MSG_FASTOPEN, daddr, FUNC8()) < 0)
		FUNC2(1, errno, "failed to send message");

	FUNC1(fd);
	FUNC3(saddr);
	FUNC3(daddr);
}