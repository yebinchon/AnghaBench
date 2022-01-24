#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kset; } ;
struct nfs_netns_client {TYPE_1__ kobject; struct net* net; } ;
struct net {int dummy; } ;
struct kobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,struct kobject*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct nfs_netns_client* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_client_kset ; 
 int /*<<< orphan*/  nfs_netns_client_type ; 

__attribute__((used)) static struct nfs_netns_client *FUNC3(struct kobject *parent,
		struct net *net)
{
	struct nfs_netns_client *p;

	p = FUNC2(sizeof(*p), GFP_KERNEL);
	if (p) {
		p->net = net;
		p->kobject.kset = nfs_client_kset;
		if (FUNC0(&p->kobject, &nfs_netns_client_type,
					parent, "nfs_client") == 0)
			return p;
		FUNC1(&p->kobject);
	}
	return NULL;
}