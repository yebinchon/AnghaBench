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
typedef  int u8 ;
struct ipv6hdr {int dummy; } ;

/* Variables and functions */
 int INET_ECN_MASK ; 
 int FUNC0 (struct ipv6hdr const*) ; 

__attribute__((used)) static u8 FUNC1(const struct ipv6hdr *ipv6h)
{
	return 1 << (FUNC0(ipv6h) & INET_ECN_MASK);
}