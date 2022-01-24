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
struct ceph_auth_client {int dummy; } ;

/* Variables and functions */
 int CEPH_ENTITY_TYPE_AUTH ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_auth_client*,int) ; 

__attribute__((used)) static void FUNC1(struct ceph_auth_client *ac,
					 int peer_type)
{
	/*
	 * We are to invalidate a service ticket in the hopes of
	 * getting a new, hopefully more valid, one.  But, we won't get
	 * it unless our AUTH ticket is good, so invalidate AUTH ticket
	 * as well, just in case.
	 */
	FUNC0(ac, peer_type);
	FUNC0(ac, CEPH_ENTITY_TYPE_AUTH);
}