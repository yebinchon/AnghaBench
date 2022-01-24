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
struct timespec64 {int dummy; } ;
struct ceph_connection {int peer_features; int /*<<< orphan*/  last_keepalive_ack; } ;

/* Variables and functions */
 int CEPH_FEATURE_MSGR_KEEPALIVE2 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64*) ; 
 struct timespec64 FUNC2 (int /*<<< orphan*/ ,struct timespec64) ; 
 scalar_t__ FUNC3 (struct timespec64*,struct timespec64*) ; 

bool FUNC4(struct ceph_connection *con,
			       unsigned long interval)
{
	if (interval > 0 &&
	    (con->peer_features & CEPH_FEATURE_MSGR_KEEPALIVE2)) {
		struct timespec64 now;
		struct timespec64 ts;
		FUNC1(&now);
		FUNC0(interval, &ts);
		ts = FUNC2(con->last_keepalive_ack, ts);
		return FUNC3(&now, &ts) >= 0;
	}
	return false;
}