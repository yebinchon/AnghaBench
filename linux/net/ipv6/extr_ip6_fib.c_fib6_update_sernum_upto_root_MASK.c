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
struct net {int dummy; } ;
struct fib6_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fib6_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 

void FUNC2(struct net *net, struct fib6_info *rt)
{
	FUNC0(rt, FUNC1(net));
}