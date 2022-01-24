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
struct clusterip_net {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * procdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  cip_arp_ops ; 
 struct clusterip_net* FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net *net)
{
#ifdef CONFIG_PROC_FS
	struct clusterip_net *cn = clusterip_pernet(net);

	mutex_lock(&cn->mutex);
	proc_remove(cn->procdir);
	cn->procdir = NULL;
	mutex_unlock(&cn->mutex);
#endif
	FUNC3(net, &cip_arp_ops);
}