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
typedef  int uint16_t ;
struct udphdr {scalar_t__ check; void* len; void* dest; void* source; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int AF_INET ; 
 scalar_t__ FUNC0 (void*,struct udphdr*,int) ; 
 scalar_t__ FUNC1 (void*,struct udphdr*,int) ; 
 int cfg_src_port ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void *header, int payload_len,
			     uint16_t dport, int family)
{
	struct udphdr *udph = header;
	int len = sizeof(*udph) + payload_len;

	udph->source = FUNC2(cfg_src_port);
	udph->dest = FUNC2(dport);
	udph->len = FUNC2(len);
	udph->check = 0;
	if (family == AF_INET)
		udph->check = FUNC0(header - sizeof(struct iphdr),
						udph, len >> 1);
	else
		udph->check = FUNC1(header - sizeof(struct ipv6hdr),
						udph, len >> 1);
}