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
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  snd_ssthresh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 

__attribute__((used)) static u32 FUNC2(struct sock *sk)
{
	FUNC0(sk);
	return FUNC1(sk)->snd_ssthresh;
}