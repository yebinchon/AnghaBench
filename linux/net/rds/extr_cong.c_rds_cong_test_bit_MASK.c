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
struct rds_cong_map {scalar_t__* m_page_addrs; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 unsigned long RDS_CONG_MAP_PAGE_BITS ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,void*) ; 

__attribute__((used)) static int FUNC2(struct rds_cong_map *map, __be16 port)
{
	unsigned long i;
	unsigned long off;

	i = FUNC0(port) / RDS_CONG_MAP_PAGE_BITS;
	off = FUNC0(port) % RDS_CONG_MAP_PAGE_BITS;

	return FUNC1(off, (void *)map->m_page_addrs[i]);
}