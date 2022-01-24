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
struct sk_msg_md {scalar_t__ data; scalar_t__ data_end; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int SK_DROP ; 
 int SK_PASS ; 
 int /*<<< orphan*/  FUNC0 (char*,char,...) ; 

int FUNC1(struct sk_msg_md *msg)
{
	void *data_end = (void *)(long) msg->data_end;
	void *data = (void *)(long) msg->data;

	char *d;

	if (data + 8 > data_end)
		return SK_DROP;

	FUNC0("data length %i\n", (__u64)msg->data_end - (__u64)msg->data);
	d = (char *)data;
	FUNC0("hello sendmsg hook %i %i\n", d[0], d[1]);

	return SK_PASS;
}