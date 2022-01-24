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
struct notifier_block {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net*,struct notifier_block*) ; 
 int FUNC1 (struct net*,struct notifier_block*) ; 

__attribute__((used)) static int FUNC2(struct net *net, struct notifier_block *nb)
{
	int err;

	err = FUNC0(net, nb);
	if (err)
		return err;

	return FUNC1(net, nb);
}