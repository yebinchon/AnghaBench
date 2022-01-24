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
struct ip_set_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ip_set_net_id ; 
 struct ip_set_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct ip_set_net *FUNC1(struct net *net)
{
	return FUNC0(net, ip_set_net_id);
}