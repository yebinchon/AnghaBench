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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  udp6_addr ;
struct udp_port_cfg {int /*<<< orphan*/  use_udp6_rx_checksums; int /*<<< orphan*/  use_udp6_tx_checksums; scalar_t__ peer_udp_port; int /*<<< orphan*/  peer_ip6; scalar_t__ local_udp_port; int /*<<< orphan*/  local_ip6; scalar_t__ bind_ifindex; scalar_t__ ipv6_v6only; } ;
struct socket {int /*<<< orphan*/  sk; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; int /*<<< orphan*/  sin6_addr; void* sin6_family; } ;
struct sockaddr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 void* AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BINDTOIFINDEX ; 
 int FUNC0 (struct socket*,struct sockaddr*,int) ; 
 int FUNC1 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct net*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

int FUNC10(struct net *net, struct udp_port_cfg *cfg,
		     struct socket **sockp)
{
	struct sockaddr_in6 udp6_addr = {};
	int err;
	struct socket *sock = NULL;

	err = FUNC6(net, AF_INET6, SOCK_DGRAM, 0, &sock);
	if (err < 0)
		goto error;

	if (cfg->ipv6_v6only) {
		int val = 1;

		err = FUNC2(sock, IPPROTO_IPV6, IPV6_V6ONLY,
					(char *) &val, sizeof(val));
		if (err < 0)
			goto error;
	}
	if (cfg->bind_ifindex) {
		err = FUNC2(sock, SOL_SOCKET, SO_BINDTOIFINDEX,
					(void *)&cfg->bind_ifindex,
					sizeof(cfg->bind_ifindex));
		if (err < 0)
			goto error;
	}

	udp6_addr.sin6_family = AF_INET6;
	FUNC4(&udp6_addr.sin6_addr, &cfg->local_ip6,
	       sizeof(udp6_addr.sin6_addr));
	udp6_addr.sin6_port = cfg->local_udp_port;
	err = FUNC0(sock, (struct sockaddr *)&udp6_addr,
			  sizeof(udp6_addr));
	if (err < 0)
		goto error;

	if (cfg->peer_udp_port) {
		FUNC5(&udp6_addr, 0, sizeof(udp6_addr));
		udp6_addr.sin6_family = AF_INET6;
		FUNC4(&udp6_addr.sin6_addr, &cfg->peer_ip6,
		       sizeof(udp6_addr.sin6_addr));
		udp6_addr.sin6_port = cfg->peer_udp_port;
		err = FUNC1(sock,
				     (struct sockaddr *)&udp6_addr,
				     sizeof(udp6_addr), 0);
	}
	if (err < 0)
		goto error;

	FUNC9(sock->sk, !cfg->use_udp6_tx_checksums);
	FUNC8(sock->sk, !cfg->use_udp6_rx_checksums);

	*sockp = sock;
	return 0;

error:
	if (sock) {
		FUNC3(sock, SHUT_RDWR);
		FUNC7(sock);
	}
	*sockp = NULL;
	return err;
}