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
struct ip6_tnl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_tnl*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_tnl*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ip6_tnl *t, int set_mtu)
{
	FUNC1(t);
	FUNC2(t, set_mtu, FUNC0(t));
}