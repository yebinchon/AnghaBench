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
struct caif_device_entry_list {int dummy; } ;
struct caif_net {struct caif_device_entry_list caifdevs; } ;

/* Variables and functions */
 int /*<<< orphan*/  caif_net_id ; 
 struct caif_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct caif_device_entry_list *FUNC1(struct net *net)
{
	struct caif_net *caifn;
	caifn = FUNC0(net, caif_net_id);
	return &caifn->caifdevs;
}