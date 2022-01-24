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
struct udphdr {int dummy; } ;
struct iphdr {int ihl; int version; int ttl; int /*<<< orphan*/  check; void* daddr; void* saddr; int /*<<< orphan*/  protocol; void* id; void* tot_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void *header, int payload_len)
{
	struct iphdr *iph = header;

	iph->ihl = 5;
	iph->version = 4;
	iph->ttl = 8;
	iph->tot_len = FUNC2(sizeof(*iph) + sizeof(struct udphdr) + payload_len);
	iph->id = FUNC2(1337);
	iph->protocol = IPPROTO_UDP;
	iph->saddr = FUNC1((172 << 24) | (17 << 16) | 2);
	iph->daddr = FUNC1((172 << 24) | (17 << 16) | 1);
	iph->check = FUNC0((void *) iph, iph->ihl << 1, 0);

	return iph->ihl << 2;
}