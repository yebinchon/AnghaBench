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
typedef  int /*<<< orphan*/  uint8_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct ipv6hdr {int version; int hop_limit; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  payload_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipv6hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(void *header, uint8_t proto,
			      struct sockaddr_in6 *src,
			      struct sockaddr_in6 *dst,
			      int payload_len, uint8_t dsfield)
{
	struct ipv6hdr *ip6h = header;

	ip6h->version = 6;
	ip6h->payload_len = FUNC0(payload_len);
	ip6h->nexthdr = proto;
	ip6h->hop_limit = 8;
	FUNC1(ip6h, dsfield);

	FUNC2(&ip6h->saddr, &src->sin6_addr, sizeof(ip6h->saddr));
	FUNC2(&ip6h->daddr, &dst->sin6_addr, sizeof(ip6h->daddr));
}