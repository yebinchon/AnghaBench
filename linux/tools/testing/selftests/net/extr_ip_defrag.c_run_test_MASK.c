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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int FRAG_HLEN ; 
 int /*<<< orphan*/  IPPROTO_RAW ; 
 int MSG_LEN_MAX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ cfg_overlap ; 
 scalar_t__ cfg_verbose ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int frag_counter ; 
 int max_frag_len ; 
 int msg_counter ; 
 int payload_len ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int* udp_payload ; 

__attribute__((used)) static void FUNC10(struct sockaddr *addr, socklen_t alen, bool ipv6)
{
	int fd_tx_raw, fd_rx_udp;
	/* Frag queue timeout is set to one second in the calling script;
	 * socket timeout should be just a bit longer to avoid tests interfering
	 * with each other.
	 */
	struct timeval tv = { .tv_sec = 1, .tv_usec = 10 };
	int idx;
	int min_frag_len = 8;

	/* Initialize the payload. */
	for (idx = 0; idx < MSG_LEN_MAX; ++idx)
		udp_payload[idx] = idx % 256;

	/* Open sockets. */
	fd_tx_raw = FUNC9(addr->sa_family, SOCK_RAW, IPPROTO_RAW);
	if (fd_tx_raw == -1)
		FUNC2(1, errno, "socket tx_raw");

	fd_rx_udp = FUNC9(addr->sa_family, SOCK_DGRAM, 0);
	if (fd_rx_udp == -1)
		FUNC2(1, errno, "socket rx_udp");
	if (FUNC0(fd_rx_udp, addr, alen))
		FUNC2(1, errno, "bind");
	/* Fail fast. */
	if (FUNC8(fd_rx_udp, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
		FUNC2(1, errno, "setsockopt rcv timeout");

	for (payload_len = min_frag_len; payload_len < MSG_LEN_MAX;
			payload_len += (FUNC5() % 4096)) {
		if (cfg_verbose)
			FUNC4("payload_len: %d\n", payload_len);

		if (cfg_overlap) {
			/* With overlaps, one send/receive pair below takes
			 * at least one second (== timeout) to run, so there
			 * is not enough test time to run a nested loop:
			 * the full overlap test takes 20-30 seconds.
			 */
			max_frag_len = min_frag_len +
				FUNC5() % (1500 - FRAG_HLEN - min_frag_len);
			FUNC7(fd_tx_raw, addr, alen, ipv6);
			FUNC6(fd_rx_udp);
		} else {
			/* Without overlaps, each packet reassembly (== one
			 * send/receive pair below) takes very little time to
			 * run, so we can easily afford more thourough testing
			 * with a nested loop: the full non-overlap test takes
			 * less than one second).
			 */
			max_frag_len = min_frag_len;
			do {
				FUNC7(fd_tx_raw, addr, alen, ipv6);
				FUNC6(fd_rx_udp);
				max_frag_len += 8 * (FUNC5() % 8);
			} while (max_frag_len < (1500 - FRAG_HLEN) &&
				 max_frag_len <= payload_len);
		}
	}

	/* Cleanup. */
	if (FUNC1(fd_tx_raw))
		FUNC2(1, errno, "close tx_raw");
	if (FUNC1(fd_rx_udp))
		FUNC2(1, errno, "close rx_udp");

	if (cfg_verbose)
		FUNC4("processed %d messages, %d fragments\n",
			msg_counter, frag_counter);

	FUNC3(stderr, "PASS\n");
}