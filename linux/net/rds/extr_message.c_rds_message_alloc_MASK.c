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
struct scatterlist {int dummy; } ;
struct rds_message {unsigned int m_total_sgs; int /*<<< orphan*/  m_flush_wait; int /*<<< orphan*/  m_rs_lock; int /*<<< orphan*/  m_conn_item; int /*<<< orphan*/  m_sock_item; int /*<<< orphan*/  m_refcount; scalar_t__ m_used_sgs; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int KMALLOC_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rds_message* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct rds_message *FUNC5(unsigned int extra_len, gfp_t gfp)
{
	struct rds_message *rm;

	if (extra_len > KMALLOC_MAX_SIZE - sizeof(struct rds_message))
		return NULL;

	rm = FUNC2(sizeof(struct rds_message) + extra_len, gfp);
	if (!rm)
		goto out;

	rm->m_used_sgs = 0;
	rm->m_total_sgs = extra_len / sizeof(struct scatterlist);

	FUNC3(&rm->m_refcount, 1);
	FUNC0(&rm->m_sock_item);
	FUNC0(&rm->m_conn_item);
	FUNC4(&rm->m_rs_lock);
	FUNC1(&rm->m_flush_wait);

out:
	return rm;
}