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
struct nfnl_log_net {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nfnl_log_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfnl_log_net_id ; 

__attribute__((used)) static struct nfnl_log_net *FUNC1(struct net *net)
{
	return FUNC0(net, nfnl_log_net_id);
}