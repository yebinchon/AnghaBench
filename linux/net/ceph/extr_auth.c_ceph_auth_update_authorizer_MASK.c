#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ceph_auth_handshake {int dummy; } ;
struct ceph_auth_client {int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* update_authorizer ) (struct ceph_auth_client*,int,struct ceph_auth_handshake*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ceph_auth_client*,int,struct ceph_auth_handshake*) ; 

int FUNC3(struct ceph_auth_client *ac,
				int peer_type,
				struct ceph_auth_handshake *a)
{
	int ret = 0;

	FUNC0(&ac->mutex);
	if (ac->ops && ac->ops->update_authorizer)
		ret = ac->ops->update_authorizer(ac, peer_type, a);
	FUNC1(&ac->mutex);
	return ret;
}