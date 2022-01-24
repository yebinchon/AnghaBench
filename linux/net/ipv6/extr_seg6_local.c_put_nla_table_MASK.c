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
struct sk_buff {int dummy; } ;
struct seg6_local_lwt {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  SEG6_LOCAL_TABLE ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
	if (FUNC0(skb, SEG6_LOCAL_TABLE, slwt->table))
		return -EMSGSIZE;

	return 0;
}