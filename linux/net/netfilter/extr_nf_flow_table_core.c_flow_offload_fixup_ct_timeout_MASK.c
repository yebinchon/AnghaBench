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
struct nf_conntrack_l4proto {int dummy; } ;
struct nf_conn {scalar_t__ timeout; } ;
typedef  scalar_t__ __s32 ;

/* Variables and functions */
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 unsigned int NF_FLOWTABLE_TCP_PICKUP_TIMEOUT ; 
 unsigned int NF_FLOWTABLE_UDP_PICKUP_TIMEOUT ; 
 struct nf_conntrack_l4proto* FUNC0 (int) ; 
 int FUNC1 (struct nf_conn*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ nfct_time_stamp ; 

__attribute__((used)) static void FUNC3(struct nf_conn *ct)
{
	const struct nf_conntrack_l4proto *l4proto;
	int l4num = FUNC1(ct);
	unsigned int timeout;

	l4proto = FUNC0(l4num);
	if (!l4proto)
		return;

	if (l4num == IPPROTO_TCP)
		timeout = NF_FLOWTABLE_TCP_PICKUP_TIMEOUT;
	else if (l4num == IPPROTO_UDP)
		timeout = NF_FLOWTABLE_UDP_PICKUP_TIMEOUT;
	else
		return;

	if (FUNC2(ct->timeout) > (__s32)timeout)
		ct->timeout = nfct_time_stamp + timeout;
}