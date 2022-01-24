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
struct net_bridge {int /*<<< orphan*/  options; } ;
typedef  enum net_bridge_opts { ____Placeholder_net_bridge_opts } net_bridge_opts ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(const struct net_bridge *br,
			     enum net_bridge_opts opt)
{
	return FUNC0(opt, &br->options);
}