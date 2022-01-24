#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sock {int /*<<< orphan*/  sk_omem_alloc; } ;
struct sk_filter {TYPE_1__* prog; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_filter*) ; 

void FUNC3(struct sock *sk, struct sk_filter *fp)
{
	u32 filter_size = FUNC1(fp->prog->len);

	FUNC0(filter_size, &sk->sk_omem_alloc);
	FUNC2(fp);
}