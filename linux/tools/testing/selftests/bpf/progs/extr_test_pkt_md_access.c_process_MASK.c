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
struct __sk_buff {int dummy; } ;

/* Variables and functions */
 int TC_ACT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __u16 ; 
 int /*<<< orphan*/  __u32 ; 
 int /*<<< orphan*/  __u8 ; 
 int /*<<< orphan*/  hash ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  protocol ; 

int FUNC1(struct __sk_buff *skb)
{
	FUNC0(__u8,  len, 0xFF);
	FUNC0(__u16, len, 0xFFFF);
	FUNC0(__u32, len, 0xFFFFFFFF);
	FUNC0(__u16, protocol, 0xFFFF);
	FUNC0(__u32, protocol, 0xFFFFFFFF);
	FUNC0(__u8,  hash, 0xFF);
	FUNC0(__u16, hash, 0xFFFF);
	FUNC0(__u32, hash, 0xFFFFFFFF);

	return TC_ACT_OK;
}