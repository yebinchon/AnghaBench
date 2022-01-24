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
struct l2tp_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  l2tp_net_id ; 
 struct l2tp_net* FUNC1 (struct net const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct l2tp_net *FUNC2(const struct net *net)
{
	FUNC0(!net);

	return FUNC1(net, l2tp_net_id);
}