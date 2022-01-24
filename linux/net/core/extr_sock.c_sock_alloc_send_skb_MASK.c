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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sock*,unsigned long,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC1(struct sock *sk, unsigned long size,
				    int noblock, int *errcode)
{
	return FUNC0(sk, size, 0, noblock, errcode, 0);
}