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
struct ceph_x_ticket_handler {scalar_t__ secret_id; } ;
struct ceph_x_authorizer {scalar_t__ secret_id; int /*<<< orphan*/  service; } ;
struct ceph_auth_handshake {scalar_t__ authorizer; } ;
struct ceph_auth_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ceph_x_ticket_handler*) ; 
 int FUNC1 (struct ceph_x_ticket_handler*) ; 
 int FUNC2 (struct ceph_auth_client*,struct ceph_x_ticket_handler*,struct ceph_x_authorizer*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct ceph_x_ticket_handler* FUNC4 (struct ceph_auth_client*,int) ; 

__attribute__((used)) static int FUNC5(
	struct ceph_auth_client *ac, int peer_type,
	struct ceph_auth_handshake *auth)
{
	struct ceph_x_authorizer *au;
	struct ceph_x_ticket_handler *th;

	th = FUNC4(ac, peer_type);
	if (FUNC0(th))
		return FUNC1(th);

	au = (struct ceph_x_authorizer *)auth->authorizer;
	if (au->secret_id < th->secret_id) {
		FUNC3("ceph_x_update_authorizer service %u secret %llu < %llu\n",
		     au->service, au->secret_id, th->secret_id);
		return FUNC2(ac, th, au);
	}
	return 0;
}