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
struct nfs_net {int /*<<< orphan*/ * bl_device_pipe; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nfs_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_net_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net *net)
{
	struct nfs_net *nn = FUNC0(net, nfs_net_id);

	FUNC1(net, nn->bl_device_pipe);
	FUNC2(nn->bl_device_pipe);
	nn->bl_device_pipe = NULL;
}