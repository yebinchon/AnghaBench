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
struct rds_sock {int /*<<< orphan*/  rs_lock; int /*<<< orphan*/  rs_cong_mask; scalar_t__ rs_cong_monitor; } ;
struct rds_cong_map {int /*<<< orphan*/  m_waitq; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_cong_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct rds_cong_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_cong_send_blocked ; 
 int /*<<< orphan*/  s_cong_send_error ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

int FUNC9(struct rds_cong_map *map, __be16 port, int nonblock,
		  struct rds_sock *rs)
{
	if (!FUNC3(map, port))
		return 0;
	if (nonblock) {
		if (rs && rs->rs_cong_monitor) {
			unsigned long flags;

			/* It would have been nice to have an atomic set_bit on
			 * a uint64_t. */
			FUNC6(&rs->rs_lock, flags);
			rs->rs_cong_mask |= FUNC0(FUNC2(port));
			FUNC7(&rs->rs_lock, flags);

			/* Test again - a congestion update may have arrived in
			 * the meantime. */
			if (!FUNC3(map, port))
				return 0;
		}
		FUNC4(s_cong_send_error);
		return -ENOBUFS;
	}

	FUNC4(s_cong_send_blocked);
	FUNC5("waiting on map %p for port %u\n", map, FUNC1(port));

	return FUNC8(map->m_waitq,
					!FUNC3(map, port));
}