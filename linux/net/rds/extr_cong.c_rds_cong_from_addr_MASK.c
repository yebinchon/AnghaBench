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
struct in6_addr {int dummy; } ;
struct rds_cong_map {unsigned long* m_page_addrs; int /*<<< orphan*/  m_conn_list; int /*<<< orphan*/  m_waitq; struct in6_addr m_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long RDS_CONG_MAP_PAGES ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_cong_map*) ; 
 struct rds_cong_map* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_cong_lock ; 
 struct rds_cong_map* FUNC6 (struct in6_addr const*,struct rds_cong_map*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct rds_cong_map*,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct rds_cong_map *FUNC10(const struct in6_addr *addr)
{
	struct rds_cong_map *map;
	struct rds_cong_map *ret = NULL;
	unsigned long zp;
	unsigned long i;
	unsigned long flags;

	map = FUNC5(sizeof(struct rds_cong_map), GFP_KERNEL);
	if (!map)
		return NULL;

	map->m_addr = *addr;
	FUNC3(&map->m_waitq);
	FUNC0(&map->m_conn_list);

	for (i = 0; i < RDS_CONG_MAP_PAGES; i++) {
		zp = FUNC2(GFP_KERNEL);
		if (zp == 0)
			goto out;
		map->m_page_addrs[i] = zp;
	}

	FUNC8(&rds_cong_lock, flags);
	ret = FUNC6(addr, map);
	FUNC9(&rds_cong_lock, flags);

	if (!ret) {
		ret = map;
		map = NULL;
	}

out:
	if (map) {
		for (i = 0; i < RDS_CONG_MAP_PAGES && map->m_page_addrs[i]; i++)
			FUNC1(map->m_page_addrs[i]);
		FUNC4(map);
	}

	FUNC7("map %p for addr %pI6c\n", ret, addr);

	return ret;
}